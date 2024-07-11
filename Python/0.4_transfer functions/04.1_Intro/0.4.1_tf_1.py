import control.matlab as c
K1 = 1
s = c.tf([1, 0], [1])
H1 = (1+0.4*s)/(s*(s**2 + 3*s + 6))
H2 = K1/(1+0.1*s)
Hc = H1.feedback(H2)
print(Hc)