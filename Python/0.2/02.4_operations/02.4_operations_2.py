import numpy as np

a = 4 + -4j
b = -2 + -3j
c = 4 + -3j

maga = np.abs(a)
magb = np.abs(b)
magc = np.abs(c)


arga= np.angle(a,deg=True)
argb = np.angle(b,deg=True)
argc = np.angle(c,deg=True)

print(argb)
print(arga)
print(magc)
