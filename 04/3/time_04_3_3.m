dt = 0.01;
t = 0:dt:30;
k = 0.5:0.5:3;
ls = {}
s = tf("s");
AS = 1/(s+10);
ARD = 9/(s*(s+1.4));
for i= 1:length(k);
    K =k(i)
    FTF = K*AS*ARD;
    H = minreal (FTF/(1+FTF))
    y1 = step(H, t);
    plot(t,y1)

    plot(t,y)

    y = step(H,t);
    %Determine settling time
    idx1 = find((y > y(end)*1.02 | y > y(end)*0.98));
    settlingTimes(i) = t(idx1(end)+1);
    
    idx = find((y > y(end)*1.02 | y < y(end)*0.98));
    tx= t(idx(end)+1)
    ls{end+1} = tx(end)+dt;
end
ls