% Setup
clc
clear
% Constants
m = 3;
b = 9; 
k = 60;

% State Variables
A = [-b/m   -k/m;...
    1   0]
B = [1/m;...
    0]
C = [0  1]
D =  [0]

% System Build
t = 0:0.01:20;
sys = ss(A, B, C, D);
x0 = [1;0];
y= initial(sys, x0,t)
u = [0;0];
plot(t, y)
yline(0,'k--')



