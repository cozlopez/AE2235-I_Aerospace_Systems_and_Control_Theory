% Setup
clc
clf
clear

%Constants setup
k1 = 0.4;
k2 = 2.9;
k3 = 2.5;
k4 = 0.6;
% Matrix Setup
A = [0  -k4*k2  -k4*k3;...
     1      -1      0;...
     0       1      0];
B = [k4 1;...
     0  0;...
     0  0];
C = [1  0   k1];
D = [0  0];

% System initialisation
sys =ss(A,B,C,D)
