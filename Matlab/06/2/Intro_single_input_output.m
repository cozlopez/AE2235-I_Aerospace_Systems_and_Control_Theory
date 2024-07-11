clc
clear
clf
% can you recognise this one? ...
a = [  0       1      0   ; ...
      -0.0071 -0.111  0.12; ...
       0       0.07  -0.3];
b = [  0 ;    -0.095; 0.072];
c = [  1       0     0    ];
d = [  0     ];
sys=ss(a, b, c, d)
% convert to transfer function
h = tf(sys)

h11 = [1] * h * [1; 0]
h12 = [1]* h * [0; 1] 
roots(h.den{1})