% enter the coefficients
b0 = 0.2;
b1 = 0.1;
b2 = 0.5;
a0 = 2.3;
a1 = 6.3;
a2 = 3.6;
a3 = 1;
% create a transfer function, several options
h = tf([b2 b1 b0], [a3 a2 a1 a0])
% or, my favorite
s = tf('s');
h = (b0 + b1*s + b2*s^2)/(a0+ a1*s + a2*s^2 + a3*s^3)
% and then combine
H = [h; h*s];
% or read the manual and do it with cell arrays, plenty of options ...
H = tf( { [b2 b1 b0] ; [b2 b1 b0 0] },{[a3 a2 a1 a0]} );
% convert to state-space
sys = ss(H)