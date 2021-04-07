%wn = 1 ve zeta = 0 0.2 ...... 1 e kadar olan değerleri 3 boyutta gösterimi
t = 0:0.2:10;
zeta = [0 0.2 0.4 0.6 0.8 1];
for n = 1:6;
    num = [1];
    den = [1 2*zeta(n) 1];   %1 + 2*(zeta)*wn + wn*wn
    sys = tf(num,den);
    y(1:51,n) = step(sys,t);
end

%2 boyut icin
plot(t,y)
grid
xlabel('t')
ylabel('cevap')
text(4.1,1.86,'\zeta = 0')
text(3.5,0.86,'1')

%3 boyutta
mesh(t,zeta,y')%y nin boyunu karislamasi icin y' yazildi 
xlabel('t')
ylabel('\zeta')
zlabel('cevap')

