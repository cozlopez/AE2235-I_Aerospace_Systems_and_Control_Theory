k1 = 1;
s = tf('s');
h1 = (1 + 0.4*s)/(s*(s^2 + 3*s + 6));
h2 = k1/(1 + 0.1*s);
% It's a normal closed loop system, textbook case.
heq = minreal(h1/(1 + h1*h2));
numerators = heq.num{1};
denominators = heq.den{1};

