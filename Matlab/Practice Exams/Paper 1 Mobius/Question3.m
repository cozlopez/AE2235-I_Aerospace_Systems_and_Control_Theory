%Setup
clc
clear

%Constants
k = 26;
s = tf("s")
dt = 0.01;
t = 0:dt:20;

%System setup
h = 3/((s+12.7)*(s-4.3));

syscon = k*h


damp(syscon)
%rltool(syscon)
sysclosfeed = feedback(syscon,1)
y = step(t,sysclosfeed)*8


r = stepinfo(y,t)
plot(t,y)


y(end)