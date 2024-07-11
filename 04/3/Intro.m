% build laplace domain
s = tf('s');

% Creating time signal
dt = 0.1;
t = 0:dt:60;

% Transfer function
H = 10/(((s^2)+2*s+5)*(s+5));

% Find poles and zeroes
pzmap(H)

% step response
y1 = step(H, t);
% impulse response
y2 = impulse(H, t);

% Plot responses
clf()
plot(t, y2)