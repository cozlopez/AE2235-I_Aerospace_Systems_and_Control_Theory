clc
clf
clear
% create a random system. Look up rss to see its definition
sys = rss(3, 2, 3); % Dimension 3, 2 inputs, 3 outputs
% convert to tf
h = tf(sys);
% see what we got
class(h);
h.num();
h.den();
h11 = tf(h.num{1}, h.den{1})  % Remember the curly braces!

% select the first row of transfer functions (output 1)
[1 0] * h;
h11 = [1 0] * h * [1; 0; 0]
h11b = tf([1 0] * sys * [1; 0; 0])
h11 - h11b
