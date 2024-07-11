import numpy as np
import numpy.random as rnd
import scipy.linalg as la


rnd.seed(3)
A = np.array(rnd.randn(20,70))
B = A[ np.where( A > 2)]
print(np.sum(B))