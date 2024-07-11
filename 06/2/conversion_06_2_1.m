% First section not correct unindent following

% State space system matrices
A = [ -0.3   0    0; ...
       0.4   -1.2   -5.0; ...
       0      1      0]
B = [ 0.3;  0;  0]
C = [ 0     1   0; ...
      0.1   0   1]
D= zeros(2,1)

% System build
sys=ss(a, b, c, d)


% clc
% clf
% clear
% % Enter the state equation matrices
% A = [ -0.3   0    0; ...
%        0.4   -1.2   -5.0; ...
%        0      1      0];
% B = [ 0.3;  0;  0];
% % and the output equation matrices
% C = [ 0     1   0; ...
%       0.1   0   1];
% D= zeros(2,1);
% % create a state-space system out of this
% sys = ss(A, B, C, D);
% % now convert to transfer function
% h = tf(sys)
% % Take one of the denominators (they are the same), and calculate the
% % location of the poles
% roots(h.den{1})