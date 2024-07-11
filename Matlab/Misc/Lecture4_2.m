clear
s = tf('s');

k1 = 1;
k2 = 2.2;

h1 = k1/(2 + s);
h2 = (1 + 0.4*s)/(s^2 + 3*s + 6);
h3 = k2/(9 + s);

% Mind the parallel lines.
heq = minreal(h2*(h1 + h3));

numerators = heq.num{1};
denominators = heq.den{1};
