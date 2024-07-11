s = tf('s')
K = 1
ta= 15
Hc = K*(s+0.01)/s
A = [0  0   0   -0.01K;...
    -1/ta   -1/ta   0   k/ta;...
    ]