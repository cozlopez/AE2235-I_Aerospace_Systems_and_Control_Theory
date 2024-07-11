import numpy as np
np.random.seed(5)
a=np.random.randn(5,5)
c=np.linalg.eigvals(a)
d=[]
print(c)
for i in range(len(c)):
    print(np.abs(c[i]))
    d.append(abs(c[i]))
print("max incoming")
print(max(d))
print(min(d))

