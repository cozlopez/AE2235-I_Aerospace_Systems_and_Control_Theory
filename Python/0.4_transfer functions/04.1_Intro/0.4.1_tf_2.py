import control.matlab as c
s = c.tf([1, 0], [1])
k1 = 2.5
k2 = 5
h1 =  k1/(2+s);
h2 =  (1+0.4*s)/(s**2 + 3*s + 6);
h3 =  k2/(9 + s);
Htotal = h2*(h1+h3)

print(Htotal.num)
print(Htotal.den)