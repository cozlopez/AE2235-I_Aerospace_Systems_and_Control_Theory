Kq = -24
Tt2 = 1.4
wsp = sqrt(13)
zsp = 2/wsp
VTAS = 160

s = tf('s')

% transfer function Hq, basis
Hq = Kq * (Tt2*s + 1) /(s^2 + 2* zsp*wsp*s + wsp^2)

% list of tf's in a vector
Hall = [Hq;
        Hq/s;
        Hq/(s*(1+Tt2*s));
        VTAS*Hq/(s^2*(1+ Tt2*s))]

% make a system
% note that you need minreal with Matlab, otherwise the system has a
% whopping 14 states, 10 too many!
sys1 = minreal(ss(Hall))