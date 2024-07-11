import control.matlab as c
s = c.tf([1, 0], [1])

h1 = 1/((1+2*s)*(1+3*s))
h2 = 1/(1+3*s)
print((h1+h2).minreal())
print (h1/(1+h1*h2))
# can be fixed with minreal:
print ((h1/(1+h1*h2)).minreal())
# but using the feedback function is more robust
print (h1.feedback(h2))