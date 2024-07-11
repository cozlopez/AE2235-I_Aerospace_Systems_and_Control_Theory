clc
clear
clf
%System parameters
Kr = -0.7;
dt = 0.1;
t = 0.1:dt:20;
%System characteristics
A = [-0.2, 0.06, 0, -1;...
      0,   0,    1,  0;...
     -17,  0, -3.8,  1;...
     9.4,  0, -0.4,-0.6];


B = [-0.01, 0.06;...
         0,    0;...
      -32,    5.4;...
      2.6,    -7];

C = [0  0   0   1];

D =[0   0];

%Controller input 
M =  [ 0 0 0 0;...
     0 0 0 Kr];


%1st System
sys = ss(A, B, C, D);




%2nd system damping
Hr1 = [0;Kr];
sys1 = feedback(sys,Hr1);



%3rd system washout+damping
Hr2 = [0; Kr * ss(-0.5, 0.5, -1, 1)];
sys2 = feedback(sys,Hr2);

damp(sys)
damp(sys1)
damp(sys2)



u = [ones(1, 10), zeros(1, length(t)-10);zeros(1,length(t))]';
y0 = lsim(sys, u, t);
y1 = lsim(sys1, u, t);
y2 = lsim(sys2, u, t);
% plotting, all three signals in different colors
plot(t, [y0, y1, y2])
% last (20s) value
y0(end)
y1(end)
y2(end)
legend("y0","y1","y2")

