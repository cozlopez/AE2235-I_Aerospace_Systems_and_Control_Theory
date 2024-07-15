% Setup
clc
clear
dt = 0.01;
t = 0:dt:20;
% TF setup

s = tf("s")

Hc = (2*s-2)/(s^2+3*s+4)

y = step(t,Hc)

y(end)