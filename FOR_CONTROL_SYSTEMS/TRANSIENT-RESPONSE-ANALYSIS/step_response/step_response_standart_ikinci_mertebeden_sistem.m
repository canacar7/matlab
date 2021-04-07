num = [25];
den = [1 4 25];
t = 0:0.1:4;
[y,x,t] = step(num,den,t);
plot(t,y)
grid
xlabel('t')
ylabel('output')