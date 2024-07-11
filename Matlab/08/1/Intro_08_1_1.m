s = tf('s');

%System functions
G = 6205/(s*(s^2+13*s+1281));

H = G/(1+G);

H = minreal(H);

%H equivalent parameters
[w, zeta, p] = damp(H)
pabs = real(p);
idxdominantPole = find (pabs == min(pabs));
dominantPole = pabs(find(pabs == min(pabs)));
T = abs(1/dominantPole)
w_n = w(2)
z = zeta(2)

%H equivalent function
H1 = (1/T)/((1/T)+s);
H2 = minreal(H/H1)
H2 = w_n^2/(s^2 + 2*z*w_n*s + w_n^2)

%Step response
t = 0:0.01:1;
y = step(H, t);
y1 = step(H1, t);
y2 = step(H2, t);

D1 = trapz(t, abs(y1 - y))
D2 = trapz(t, abs(y2 - y))