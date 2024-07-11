import numpy.random as rnd
import numpy as np
np.random.seed(1)
a =rnd.rand(6,6)
a[4,:] = np.arange(2,8)
print(np.sum(a))

