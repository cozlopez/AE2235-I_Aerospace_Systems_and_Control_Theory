% Setup
clf
clc
clear
% Transfer function
b0 = 0.2;
b1 = 0.1;
b2 = 0.5;
a0 = 2.3;
a1 = 6.3;
a2 = 3.6;
a3 = 1;
s = tf('s');
h = (b0 +b1*s+b2*s^2)/(a0+a1*s+a2*s^2+a3*s^3);
H = [h; h*s];
% Conversion to state space
sys = ss(H)
eig(sys.A)
roots(h.den{1})