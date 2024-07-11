%Setup

clf
% Define s variable
s = tf("s");

% Constants definition
kap = 0.8;
ka = 4;
tau_a = 0.8;

%System Definition
sys1 = ss(kap*(s/s));
sys2 = ss(9/(s^2+5*s+9));
sys3 = ss(ka/((tau_a*s+1)*s));

sys = append(sys1,sys2,sys3);
Q = [1  -3;...
     2   1;...
     3   2];
inputs = [1];
outputs = 1:3;
syscon = connect(sys,Q,inputs, outputs)


