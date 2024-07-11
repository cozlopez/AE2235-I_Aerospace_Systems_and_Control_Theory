import numpy.random as rnd
import scipy.linalg as la
import numpy as np
rnd.seed(4)
a = rnd.rand(5,5)
t = la.toeplitz(np.arange(1, 6))
a_t = np.transpose(a)
summatrix = a_t + t
#print first row of summatrix
print(sum(summatrix[:,0]))
