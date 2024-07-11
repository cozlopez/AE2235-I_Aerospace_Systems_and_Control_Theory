% ramp and hold
u = min(0.1*t, 1)';
y1 = step(H, t);
y2 = lsim(H, u, t);
clf(); % clear plot
plot(t, [u y1 y2]);