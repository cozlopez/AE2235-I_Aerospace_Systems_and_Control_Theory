import numpy as np
import numpy.random as rnd
print(np.sin(0.4))           # scalar variable
print(np.sin([1, 2, 3]))     # python array of 3 elements
print(np.sin(np.matrix([[1.0, 3.0],[0.0, 5.0]]))) # with a numpy matrix
print(np.sin(rnd.rand(3,3))) # using a random matrix, 3x3

a = np.matrix('[1 2; 4 5]')
print(a)
'''
[[1 2]
 [4 5]]
 '''

b = np.matrix('[1.0 2.0; 4.0 5.0]')
print(b)

''''
[[1. 2.]
 [4. 5.]]
 '''

# making some matrices to play with
a = np.matrix('1.0; 2.0; 3.0; 4.0')
b = rnd.rand(4, 5)
c = np.arange(1,7)
print('matrix a:',a)
print('matrix b:',a)
print('matrix c:',c)

# when you are creating test input signals, ones and zeros are useful
d = np.zeros((100,1))
e = np.ones((20,1))

# note that the c matrix ends at value 6, typically, 
# python ranges don't include the end value

# the hstack function takes a sequence of matrices
np.hstack((b, a))

# the vstack does the same. 
r = np.vstack( (np.hstack( (b, a,) ), c,) )
# also note that the c matrix was implicitly converted from
# integer to double