s = tf('s');
k1 = 1;
h1 = (1+0.4*s)/(s*(s^2+3*s+6));
h2 = k1/(1+0.1*s);

h=feedback(h1,h2);
h.num{1}
h.den{1}