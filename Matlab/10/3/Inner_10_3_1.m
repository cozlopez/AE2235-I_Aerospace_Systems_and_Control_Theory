
s = tf('s')
h = -24*(1+1.4*s)/(s*(s^2+4*s+13))
rlocus(-h)

%% result 
Ktheta = -0.443 % this is the gain that came out of rltool
Hc = feedback(Ktheta * h, 1)
damp(Hc)