% Setup
clc
clear
% Constants
m = 3;
b = 12; 
k = 100;

% State Variables
A = [-b/m   -k/m;...
    1   0];
B = [1/m;...
    0];
C = [0  1];
D =  [0];

% System Build
t = 0:0.01:20;
sys = ss(A, B, C, D);
x0 = [1;0];
y= initial(sys, x0,t);
u = [0;0];
plot(t, y);

% Frequencies in rads
w1 = 4.2130749;
w2 = 3.9370039;
u1 = sin(t*w1);
u2 = sin(t*w2);

% response creation
y1 = lsim(sys, u1, t);
y2 = lsim(sys, u2, t);

%plot
plot(t, y1,t, y2)
yline(0,'k--')
max(y1)
max(y2)
legend('y1','y2')

