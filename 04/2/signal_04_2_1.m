dt = 0.2
t = 0:dt:20
frequency = 5.05
sin_signal = sin(2*pi*frequency*t)
clf
plot(t,sin_signal)
xlabel('Time(s)')
ylabel('Amplitude')
title('Sine Signal (5.05Hz)')
grid on;