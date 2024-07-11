import numpy.random as rnd
import numpy as np
rnd.seed(10)  # set the seed to 10
randommatrix = rnd.rand(15,7)
print(sum(randommatrix[:,5]))

