%Setup
clc
clear

%Constants
t = 0:0.001
Kpsi = 2.6
V = 10
l = 3
s =tf('s')

%System
Hcl_n= (V*l*s)/(l*s^2+Kpsi * V*s+0.6*Kpsi*V^2)

rltool(Hcl_n)
y = step(Hcl_n,t)

stepinfo(y,t)