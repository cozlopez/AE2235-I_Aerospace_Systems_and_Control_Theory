from control.matlab import *
import numpy as np
import matplotlib.pyplot as plt

# first enter the basic aircraft
A = np.mat('''-0.2  0.06 0    -1;
               0    0    1     0;
             -17    0   -3.8   1;
               9.4  0   -0.4  -0.6''')
B = np.mat('''-0.01  0.06;
               0     0;
             -32     5.4;
               2.6  -7''')
# only need rudder input!
# note that specifying the column index as [1], keeps the B
# as a column vector

# only need yaw rate r, so create custom output matrices
C = np.mat(''' 0   0   0   1''')
D = np.mat([[0]])
# the system
sys0 = ss(A, B, C, D)
# calculate a step response
T = np.arange(0, 20, 0.01)
y, t = step(sys0, T)
# plot the response
plt.plot(t, y)
plt.show()
# it looks like the minimum is in the first second
print("minimum", np.min(y[t<1]))

from control.matlab import *
import numpy as np
import matplotlib.pyplot as plt

# I hope by now you learned to keep your models in files, so you still
# have sys0, representing the state-space system of the asymmetric
# motions of the aircraft. You need a model that has the following
# outputs, beta, phi, p and r, so the C and D matrices must be modified
# if you need the A and B matrices, go look for them!
C = np.eye(4)
D = np.zeros((4,1))
sys = ss(A, B, C, D)

# now make a proper feedback matrix; feed back the 4th output (r) to the
# 2nd input (rudder, delta_r)
# think of this matrix as being multiplied by a 4-element vector (the
# output vector), and then producing a 2-element vector (the input vector)
Kr = -0.7
K = np.mat([[0, 0, 0, 0],[0, 0, 0, Kr]])
sysc = sys.feedback(K)

print(sysc)