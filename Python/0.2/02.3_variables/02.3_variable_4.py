import numpy.random as rnd
import numpy as np

rnd.seed(9)

a = rnd.randn(5,5)

a = np.round(a)

rowvector = np.arange(-2,3).reshape((1,5))
columnvector = np.arange(0,6).reshape((6, 1))

print('rowvector:', rowvector)
print('columnvector:', columnvector)

a2 = np.vstack((a, rowvector))
a3 = np.hstack((a2, columnvector))
print(a3)
print(np.count_nonzero(a3))