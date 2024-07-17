clc
clear


s = tf("s")
t = 0:0.001:1000
Kp = 0.01
Kd = 0.14
ki = 0.0001
D = Kp*(1+(14)*s+(0.01)/s)
sat =1.4/s^2
sensor = 2/(2+s)

syscon  = D*sat*sensor

hpd = feedback(sat,sensor*D)
rltool(syscon)
%rlocus(syscon)
%y = step(hpd,t);
%y(end)
%plot(t,y)
