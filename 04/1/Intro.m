s = tf('s')
h1 = 1/((1+2*s)*(1+3*s))
h2 = 1/(1+3*s)
h1 + h2
minreal(h1+h2)
H = minreal(h1/(1 + h1 * h2))
H = feedback(h1, h2)