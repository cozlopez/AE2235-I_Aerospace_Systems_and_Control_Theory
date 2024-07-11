import numpy as np from control.matlab import *
# parameter values
M = 4
b =9
k = 60
# matrices
A = np.matrix([[ -b/m, -k/m], [ 1, 0]])
В = пр.matrix([[ 1/m], [ 0]])
C = np.matrix([[ 0, 1], [ 1, 0], [ -b/m, -k/m]])
D = np.matrix([[0］， ［ 0］， ［ 1/m］］）
# to continue, and make the system
sys = SS (A, B, C,