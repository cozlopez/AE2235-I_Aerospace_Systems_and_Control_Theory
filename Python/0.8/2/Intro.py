from control.matlab import ss
import numpy as np
a = np.matrix('''0 1 0 ;
-0.0071 -0.111 0.12;
0 0.07 -0.3''')
b = np.matrix(''' 0 ; -0.095; 0.072''')
c = np.matrix(''' 1.0 0 0;
0 1 0;
0 0 1;
1 0 -1''')
d = np.zeros((4, 1))
sys2 = ss(a, b, c, d)
k = np.matrix( '0  -0.67 0  0')
sysclosed = sys2.feedback(k)
import scipy.linalg as la
print (la.eig(sysclosed.A)[0])
print (la.eig(sys2.A)[0])