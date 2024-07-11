% With Matlab 2011a and later
rng(9)
% With earlier versions, try
s = RandStream('mt19937ar', 'Seed', 9) % make a new random generator
RandStream.setGlobalStream(s)         % make that the default random generator

m = [ [round(randn(5,5)); -2:1:2] (0:5)' ]
nnz(m)