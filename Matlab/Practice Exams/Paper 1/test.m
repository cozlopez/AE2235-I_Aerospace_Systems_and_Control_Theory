% enter the parameters and basic tf
K = 1
Kr = 0.9

s =tf('s') 
h = 20/(s+1)/(s+4)

% move pick-off point for fb loop with Kr one to the right, multiply by 
% s to compensate, so I get a single fb loop with: 1+ Kr*s
H_ry = feedback(K*h/s, 1+Kr*s)
H_ry.num{1}
H_ry.den{1}

% first do the inner loop
H_in = feedback(K*h, Kr)

% now the rest
H_re = feedback(1, H_in*(1/s))
H_re.num{1}
H_re.den{1}

% settling time
t = 0:0.001:10;
y = step(H_ry, t);

% check!
plot(t, y)

lsiminfo(y, t, 'SettlingTimeThreshold', 0.05)

% root-locus procedure on the open loop
rltool(K*h/s*(1+Kr*s))

% adjust until gain for damping coefficient 0.8 is found