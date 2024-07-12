Kq = -24
Tt2 = 1.4
wsp = sqrt(13)
zsp = 2/wsp
VTAS = 160
Kr = -0.089
s = tf('s')
dt = 0.10
t = 0:dt:50;
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
Hr = [Kr    0   0   0]
sys2 = minreal(ss(Hr))

sysclos = feedback(sys1,sys2)

damp(sysclos)
clf
figure(1)
subplot(2,1,1)
y = step(sys1,t);

y2 = step(sysclos,t);
plot(t,[y,y2])

y(end,1)
y2(end,1)

mat2str(sysclos.A)
mat2str(sysclos.B)
mat2str(sysclos.C)
mat2str(sysclos.D)