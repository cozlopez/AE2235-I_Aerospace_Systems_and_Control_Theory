clear
% parameter values
m = 3
b = 6
k = 20
% matrices
A = [ -b/m -k/m; 1 0]
B = [ 1/m; 0]
% C and D to only plot position
C = [ 0 1]
D = [ 0]
% base system
sys = ss(A, B, C, D)
% increased mass
m = 2*m; A = [ -b/m -k/m; 1 0]; B = [ 1/m; 0]; m = m / 2;
sys_2m = ss(A, B, C, D)
% increased stiffness
k = 2*k; A = [ -b/m -k/m; 1 0]; B = [ 1/m; 0]; k = k / 2;
sys_2k = ss(A, B, C, D)
% increased damping
b = 2*b; A = [ -b/m -k/m; 1 0]; B = [ 1/m; 0]; b = b / 2;
sys_2b = ss(A, B, C, D)
% responses
x0 = [1; 0]
t = 0:0.01:10;
y = initial(sys, x0, t);
y_2m = initial(sys_2m, x0, t);
y_2k = initial(sys_2k, x0, t);
y_2b = initial(sys_2b, x0, t);
% plotting
figure; plot(t', [y y_2m])
figure; plot(t', [y y_2k])
figure; plot(t', [y y_2b])