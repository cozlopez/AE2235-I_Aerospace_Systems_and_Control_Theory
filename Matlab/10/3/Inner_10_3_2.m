s = tf('s')
h = -24*(1+1.4*s)/(s^2+4*s+13)
rltool(-h)
%% result 
Kr = -0.08935% this is the gain that came out of rltool
Hc = feedback(h, Kr)
damp(Hc)