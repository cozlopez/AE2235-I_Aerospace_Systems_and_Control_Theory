from control.matlab import *
import scipy as sp
import matplotlib.pyplot as plt

s = tf([1, 0], [1])
# enter the open-loop tf
G = 6205/(s*(s**2 + 13*s + 1281))

# create closed-loop tf
Heq = G.feedback(1)
p = pole(Heq)