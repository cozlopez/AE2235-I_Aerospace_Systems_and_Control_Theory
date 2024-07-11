from sympy import Symbol, apart
s = Symbol('s')

# the step input signal
u = 1/s
# the system
h = (s+2)/(s**3 + 3*s**2 + 2*s + 5)

# partial fraction expansion
print(apart(h*u, s))