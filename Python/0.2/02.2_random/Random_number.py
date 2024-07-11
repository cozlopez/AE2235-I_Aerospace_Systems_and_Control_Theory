import numpy.random as rnd
rnd.seed(5)  # reset the random number generator
print('random number ', rnd.rand())  # get a single number out

# random number  0.22199317109

# try this again
rnd.seed(5)
print ('random number ', rnd.rand()) # get a single number out

# random number  0.22199317109


rnd.seed(10)
a = rnd.rand(4, 4)
print(a)
# Oops, I wanted Gaussian distribution
a = rnd.randn(4, 4) # now fresh numbers come out.
print(a)

