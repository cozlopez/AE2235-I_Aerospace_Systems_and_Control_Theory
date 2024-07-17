s = tf("s");

k = 1*(s/s);

h = 0.5*(2*s+1)/(s^2*(s^2+0.4*s+4));
dt = 0.01;
t = 0:dt:40;

% sys = append(k,H)
% Q = [1  2;...
%      2  1];
% inputs = [1];
% outputs = [2];

% syscon = connect(sys, Q, inputs, outputs);
% tf(syscon);
% clf; bode(syscon, {0.001, 1})

%sisotool(syscon)
[gm, pm, gco, pco] = margin(h)
gmdb = 20*log10(gm)
sisotool(h)
bode(h, logspace(-1, 1))
K = 10.^((gmdb - 6)/20)


[gm, pm, gco, pco] = margin(h*K)
20*log10(gm)

Hc = feedback(h*K, 1);
figure(2)
[mag, phase, omega] = bode(Hc, logspace(-1, 1, 500));
bode(Hc, logspace(-1, 1, 500))
20 *log10(max(mag))