% Setup
clc
clear


%Constants
kr = 0.9;
k = 1;
s = tf("s");
dt = 0.001;
t = 0:dt:10;

% System
h = k*(20/((s+1)*(s+4)));
sysclosedint = feedback(h,kr);
sys2 = (1/s)*sysclosedint;

sysclosedext = feedback(sys2,1)

sysclosedext.Numerator;
sysclosedext.Denominator;

sysclosedext2  = feedback(1,sys2)
sysclosedext2.Numerator
sysclosedext2.Denominator

y = step(sysclosedext,t)
lsiminfo(y, t, 'SettlingTimeThreshold', 0.05)
plot(t,y)

sisotool(-sys2)
rltool(sys2)