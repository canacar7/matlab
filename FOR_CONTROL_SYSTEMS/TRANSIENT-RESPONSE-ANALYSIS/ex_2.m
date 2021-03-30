t    = 0:0.01:5;
num1 = [100 1000];
num2 = [1000];
den  = [1 10 100 600];
sys1 = tf(num1,den);
sys2 = tf(num2,den);
x = step(sys1,t);
y = step(sys2,t);
plot(t,x,t,y);
grid;
title('Unit-Step-Responses');
xlabel('t(sec)');
ylabel('x(t) , y(t)');
text(0.07,2.8,'x(t)');
text(0.7,2.35,'y(t)');


