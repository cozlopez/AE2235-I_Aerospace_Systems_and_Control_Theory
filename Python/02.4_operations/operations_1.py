import numpy as np
import numpy.random as rnd
import scipy.linalg as la

rnd.seed(5)
A = rnd.randn(5,5)
A = np.matrix(A)
ev = np.linalg.eigvals(A)

print(ev)
