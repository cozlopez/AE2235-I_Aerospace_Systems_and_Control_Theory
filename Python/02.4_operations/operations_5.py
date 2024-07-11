import numpy as np
import numpy.random as rnd
import scipy.linalg as la

rnd.seed(6)
numbers = rnd.randn(5000)
nInRange = numbers[ np.where(numbers <= abs(2))]
print(nInRange)
percentage = len(nInRange)/len(numbers) * 100
print(percentage)