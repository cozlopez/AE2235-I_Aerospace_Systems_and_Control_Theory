s = tf('s');
k1 = 5;
k2 = 2.5;

H1 = k1/(2+s);
H2 = (1+0.4*s)/(s^2+3*s+6);
H3 = k2/(9+s);

hc = minreal(H2*(H1+H3))
hc.num{1}
hc.den{1}
