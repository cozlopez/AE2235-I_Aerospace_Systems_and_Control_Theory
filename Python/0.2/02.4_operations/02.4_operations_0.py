import numpy as np

# difference between matrix and array
# note that the shape is given here as a tuple: (3, 3)
a = np.arange(9.0).reshape((3, 3))
m = np.matrix(a)
print(a)
print(m)
# for example, multiplying 2 arrays
print("multiplying 2 arrays")
print(a * a)
print()
# or two matrices
print("two matrices")

print(m * m)
print()
# or mix them; they become matrices
print("mixing arrays and matrices")
print(a * m)
print()
# but if you need array behaviour, simply do
print("only array behaviour")
print (np.array(m) * np.array(m))