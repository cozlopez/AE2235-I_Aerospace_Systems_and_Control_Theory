%Parameters
Kq = -24;
Tt2 = 1.4;
wsp = sqrt(13);
zsp = 2/wsp;
VTAS = 160;
kr = -0.089;
kth = -0.4735;

s = tf('s');

% transfer function Hq, basis
Hq = Kq * (Tt2*s + 1) /(s^2 + 2* zsp*wsp*s + wsp^2);

% list of tf's in a vector
Htheta = Hq/s;
Hgamma = Hq/(s*(1+Tt2*s));
Hh = VTAS*Hq/(s^2*(1+ Tt2*s));

H = [Hq; Htheta; Hgamma; Hh];


sys1 = minreal(ss(H));

%Feedback system establishment
Kr = [kr,0,0,0];
sys2 = minreal(feedback(sys1, Kr));




sys3 = minreal(feedback(kth*sys2,[0,1,0,0]));


mat2str(sys3.A);
mat2str(sys3.B);
mat2str(sys3.C);
mat2str(sys3.D);

t = 0:0.05:20;

y = lsim(sys3, ones(size(t)), t);
y(end,2)

idx = find((y(:,2)>y(end,2)*1.05|y(:,2)<y(end,2)*0.95));
tsettling = t(idx(end)+1)

h = 1/(1+2.5*s);

y1 = lsim(h, ones(size(t)), t);


idx = find((y1>y1(end)*1.05|y1<y1(end)*0.95));
tsettling = t(idx(end)+1)
plot(t, [y(:,2),y1])