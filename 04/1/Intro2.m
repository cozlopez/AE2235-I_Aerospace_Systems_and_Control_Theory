s = tf('s');
% the step input signal
u = 1/s
% the system
h = (s+2)/(s^3 + 3*s^2 + 2*s + 5)
% the response
y = h * u
% partial fraction expansion
[r, p, k] = residue(y.num{1}, y.den{1})
