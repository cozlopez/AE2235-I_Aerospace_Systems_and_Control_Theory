clear
% parameter values
m = 3.0
b = 9.0
k = 60.0
% matrices
A = [ -b/m -k/m; 1 0]
B = [ 1/m; 0]
C = [ 0 1]
D = [ 0]
% system
sys = ss(A, B, C, D)

w1 = 4.2130749
w2 = 3.9370039
% the time vector, and the input signal
t = 0:0.01:10;
u1 = sin(t*w1);
u2 = sin(t*w2);
% calculate the response, need the first input, position
y1 = lsim(sys, u1, t);
y2 = lsim(sys, u2, t);
% plot the two nicely alongside each other
plot(t, y1, t, y2)
% you can now use the data cursor to get the maximum values. Or simply
% run:
max(y1)
max(y2)