%System Parameters
Ka = 4;
Tap = 0.8;
Kap = 0.8;

%Transfer functions
s=tf('s');

h2 = 9/(s^2+5*s+9);
h3 = Ka/((Tap*s+1)*s);

%Transfer functions to state space
sys1 = ss(h2);
sys2 = ss(h3);

%System
sys = append(Kap, sys1, sys2);

%System parameters
Q = [1 -3; ... % feedback phi
     2  1; ... % connect autopilot out
     3  2]     % connect a/c to actuator
inputs = [1]
outputs = 1:3
% connect
sys = connect(sys, Q, inputs, outputs)

mat2str(sys.A)
mat2str(sys.B)
mat2str(sys.C)
mat2str(sys.D)