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
C = [0  1;...
    1   0;...
    -b/m    -k/m]
D =  [0;...
    0;...
    1/m]

% System Build
sys = ss(A, B, C, D)

