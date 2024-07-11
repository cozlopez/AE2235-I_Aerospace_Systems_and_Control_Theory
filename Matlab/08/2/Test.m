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

C = [ 0   0   0   1]
D = [ 0   0]

%Controllers input 
M =  [0; Kd];
     
K = [0; Kd * ss(-0.5, 0.5, -1, 1)];


%System
sys = ss(A, B, C, D);
closedSys1 = feedback(sys, M);

damp(sys)
damp(closedSys1)

closedSys2 = feedback(sys, K);

%Simulation
t = 0.1:0.1:20;
u = [ones(1, 10), zeros(1, length(t)-10);zeros(1,length(t))]';

y = lsim(sys, u, t);
y(end)
y = lsim(closedSys1, u, t);
y(end)
y = lsim(closedSys2, u, t);
y(end)