% Setup
clc
clear

%Constants
s = tf("s")
t = 0:0.01:400
Kp = -0.2
%System setup 
A = [-0.9 -3.0 0; -0.5 -2.5 0; 0 1 0];
B = [ 0.2; -0.1; 0];
C = [0]
D = [1]

I = eye(3)

%Question a  Use cramer rule  and then apply minreal
hpsi = minreal(((s*I-A)^-1)*B)
% Use third output as it it the one for psi

%Question b
Hnew = (-0.1*s-0.0198)/(s^3+0.46*s^2+0.0401*s)

%rltool(-Hnew)  % Answer -0.12391 carefull in the root locus the gain will appear positive you need to change signs

% Question c
Hclosed = feedback(Kp*Hnew,1)
y = step(Hclosed,t)
r = stepinfo(y,t,SettlingTimeThreshold=0.05)

%Question d


