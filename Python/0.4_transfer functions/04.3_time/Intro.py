import control as c
import numpy as np
H = c.TransferFunction([10], [1, 2, 5]) * c.TransferFunction([1], [1, 5])
t = np.arange(0, 60.1, 0.1)
c.pzmap(H)
import matplotlib.pyplot as plt
plt.show()