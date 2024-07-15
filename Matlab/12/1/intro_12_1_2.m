% Setup
clc
clf
clear

% Constants
Jb = 400;
Jp = 1000;
k = 10;
b = 5;
dt =0.01
% System setup 
s = tf('s');
hb1 = 1/(Jb*s);
hb2 = 1/s;
hp1 = 1/(Jp*s);
hp2 = 1/s;
sat0 = append(ss(hb1), ss(hb2), k, b, ss(hp1), ss(hp2));
t = 0:dt:100;

Q = [1   -3    -4;...
     2    1     0;...
     3    2    -6;...
     4    1    -5;...
     5    4     3;...
     6    5     0];

inputs = [1];
outputs  = [1,2,5,6];
syscon = connect(sat0,Q,inputs, outputs)

y = step(t, syscon)

plot(t,y)
legend('$\dot{\theta_{b}}$','$\theta_{b}$','$\dot{\theta_{p}}$','$\theta_{p}$','Interpreter','latex')

% transfer function, torque on body to body attitude
Hb = minreal(tf([0 1 0 0]*syscon))
% transfer function, torque on body to payload attitude
Hp = minreal(tf([0 0 0 1]*syscon))
% calculate a step input, and plot the speeds
t = 0:0.05:100;
y = lsim(syscon, ones(size(t)), t);
% plot the two velocities
figure(2)
clf; plot(t', y(:,[1 3]))
% absolute maximum difference
max(abs(y(:,2)-y(:,4)))


% Bode plot, open loop system
% phase might start at +180, but that does not mean
% we have a very large phase margin, it is just an
% artefact of the program (+180 deg = -180 deg)
clf; bode(Hp, {0.001, 1})
% Combine with the compensator
HpHc = (1+50*s)*Hp
% Bode plot, again
clf; bode(HpHc, {0.001, 1})
% find maximum phase -101 deg, means a margin of 79 deg
% however, the gain peak is at +6.3 dB,
% to tune to have a gain margin of 6 dB, a gain of -12.3 dB
% (=10^(-12.3/20) = 0.243)
% needs to be added.
% re-plot, with gain
clf; margin(0.243*HpHc)
% at the 0dB crossing, the phase is -144, meaning that the
% phase margin will be 36 degrees.
% the cross-over frequency is 0.0025 Hz or 0.015 rad/s