s = tf('s');
H = s/(s^2+s+16);
dt = 0.01;
t = 0:dt:30;
y = step(t, H);
y(end)