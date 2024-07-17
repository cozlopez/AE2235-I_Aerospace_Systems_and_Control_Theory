%Setup
clc
clear

%Constants
s = tf("s")
Ky = 0.6
Kpsi = 0.3
V = 10
l = 3
%System setup
sys1 = Ky *(s/s)
sys2 = Kpsi
sys3  = V/(l*s)
sys4 = V/s

sys = append(sys1,sys2,sys3,sys4)

Q = [1  -4   0;...
     2  1   -3;...
     3  2   0;...
     4  3   0]

inputs = [1 2]

outputs = [4  3  2]

finsys = connect(sys, Q,inputs,outputs)
