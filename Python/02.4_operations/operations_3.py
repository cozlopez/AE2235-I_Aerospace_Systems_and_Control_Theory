import numpy as np
import numpy.random as rnd
import scipy.linalg as la

a = np.matrix(np.arange(0,5,0.05))
b = np.sin(a)
value = np.sum(np.array(b))
print(value)