%Setup
clc
clear

%Constants
s = tf("s")
t = 0:0.01:500
kap = 0.20874 % Change after c
kr = 1.1
taua = 0.5
taupsi = 0.8
%Question a
Hf = kap*(9/(s^2+5*s+9))*(kr/(s*(taua*s+1)))

hclosed = feedback(Hf,1)
%Question b
hclosed2 = feedback(1, Hf)

% Question c

%rltool(Hf) % kap = 0.36564

% Question d
y = step(hclosed2,t)*2.9

plot(t,y)
%y(end) % 4.7007e-14 that is the anwer but in mobius it only accepts 0

%Question e
ARG = 1/(taupsi*s+1)
hclosed3 = feedback(Hf,ARG)

%Question f
hclosed4 = feedback(1,ARG*Hf)

%Question g

%rltool(Hf*ARG) % kap = 0.20874
% Question h
y = step(hclosed4,t)*2.9

figure(2)
plot(t,y)
y(end) % 1.8030e-14 that is the anwer but in mobius it only accepts 0







