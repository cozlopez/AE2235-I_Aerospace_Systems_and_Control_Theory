k1 = 5
k2 = 2.5
s = tf('s')
h1 =  k1/(2+s);
h2 =  (1+0.4*s)/(s^2 + 3*s + 6);
h3 =  k2/(9 + s);
htotal = minreal(h2*(h1 + h3))

htotal.num{1}
htotal.den{1}