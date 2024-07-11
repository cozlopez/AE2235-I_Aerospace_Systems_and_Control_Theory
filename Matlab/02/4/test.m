% With Matlab 2011a and later
rng(5)


a = randn(5,5)
e = eig(a)
% calculate the norm of the complex numbers
abs(e)