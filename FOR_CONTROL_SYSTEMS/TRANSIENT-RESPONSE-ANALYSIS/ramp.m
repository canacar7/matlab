% 2s + 1 / s^2 + s+  1 fomk ramp respon sesi icin
% oncelikle girisi icin r(s) = 1 / s^2 
% 2s + 1 / (s^2 + s + 1)*s^2
num = [2 1];
den = [1 1 1 0];
t = 0:0.01:10;
c = step(num,den,t);

%refreans girisni de eklemek istersek t yi kullancaz
plot(t,c,'o',t,t,'-')
grid
xlabel('t')
ylabel('input and output')
