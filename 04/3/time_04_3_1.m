m = 2 %kg
k = 20 %N/m
b = 5 %Ns/m

s = tf('s')
h = (1/m)/(s^2+k/m+(b*s)/m)

% Natural frequency and damping coeff

w_n = sqrt(k/m)
z =b/(2*m*w_n)
[wn,zeta] = damp(h)
