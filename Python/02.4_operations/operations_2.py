import numpy as np
import numpy.random as rnd
import scipy.linalg as la

d = 4 + -4j
e= -2 + -3j
f = 4 + -3j

d1 = np.angle(d,deg=True)
e1 = np.angle(e,deg=True)
f1 = np.angle(f,deg=True)


print("The angle of d is: ",d1)
print("The angle of e is: ",e1)
print("The angle of f is: ",f1)

