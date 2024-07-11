%System parameters
Kd = -0.6;

%System characteristics
A = [-0.2, 0.06, 0, -1;...
      0,   0,    1,  0;...
     -17,  0, -3.8,  1;...
     9.4,  0, -0.4,-0.6];


B = [-0.01, 0.06;...
         0,    0;...
      -32,    5.4;...
      2.6,    -7];

C = eye(4);

D = 0;

%Controller input 
M =  [ 0 0 0 0;...
     0 0 0 Kd];


%System
sys = ss(A, B, C, D);

closedSys = feedback(sys, M);




mat2str(closedSys.A)
mat2str(closedSys.B)
mat2str(closedSys.C)
mat2str(closedSys.D)