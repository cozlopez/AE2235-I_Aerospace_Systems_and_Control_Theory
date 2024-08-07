% Define s variable
s=tf([1,0],[1]);

% fill in variables
K1 = 0.4
K2 = 2.9
K3 = 2.5
K4 = 0.6

% Define systems; the appended system type will the type of the first system 
% given. If the following systems do not have a proper form they will be 
% transformed automatically

% Sys1 of the block diagram is a constant which has to be transformed into a 
% state-space system.

sys1 = ss(K4 * (s/s));   % Multiply with s/s to 'trick' the control module into thinking K4 is a transfer function
sys2 = ss(1/s);
sys3 = ss(1/(s+1));
sys4 = ss(1/s);
sys5 = K1;               % Will be transformed by the append function
sys6 = K2;
sys7 = K3;
sys8 = 1;                % Add dummy sys8 in order to sum y4 and y5

sys = append(sys1,sys2,sys3,sys4,sys5,sys6,sys7,sys8);

Q = [1 -6 -7;...         % u1 = -y6 - y7
    2  1  0;...          % u2 = y1
    3  2  0;...          % u3 = y2
    4  3  0;...          % u4 = y3
    5  2  0;...          % u5 = y2
    6  3  0;...          % u6 = y3
    7  4  0;...          % u7 = y4
    8  4  5];            % u8 = y4 + y5

inputs = [1,2];          % R(s) input of sys1, D(s) input of sys2
outputs = [8];           % Y(s) output of sys8

syscon = connect(sys, Q, inputs, outputs)