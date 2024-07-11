m = 2 %kg
k = 20 %N/m
b = 5 %Ns/m

s = tf('s')
h = (1/m)/(s^2+k/m+(b*s)/m)

% Natural frequency and damping coeff

w_n = sqrt(k/m);
z =b/(2*m*w_n);
[wn,zeta] = damp(h);

dt = 0.001;
t = 0:dt:30;
y = step(h,t);
plot(t,y);

% Find all responses outside of settling band
idx = y >y(end)*1.05 | y< y(end)*0.95;
% last of those+ time step should be the settling time
tx = t(idx); tx(end) + dt
% overshoot in %
max(y)/y(end)*100-100
%rise time 10-90%
idx1 = y>y(end)*0.1;
idx2 = y>y(end)*0.9;
tidx1 = t(idx1); tidx2 = t(idx2); tidx2(1)-tidx1(1)
tidx1(1)




