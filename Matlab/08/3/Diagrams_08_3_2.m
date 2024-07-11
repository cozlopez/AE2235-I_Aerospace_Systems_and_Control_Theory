% Setup
clf
clc
clear
% Laplace domain
s = tf('s');

% Constants
K = 0.65

% System definition
sys1 = ss((K*(4*s^2+2*s+1))/(s*(0.1*s+1)));
sys2 = ss(1 /(s^2*(s^2+s+4)));


sys = append(sys2,sys1);

Q = [1  2;...
     2   -1];
inputs = 2;
outputs = 1:2;

syscon = connect(sys,Q,inputs,outputs)




