dt = 0.15;
t = 0:dt:30;
rampend = 4.5;
rampsize = 8.3;
u = [0:dt/rampend:1,ones(1, (30-rampend)/dt)]*rampsize;
clf();       % clears the plot window
plot(t, u);  % plot the input against time

sum(u)