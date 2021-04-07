num = [1];
den = [1 0.2 1];
sys = tf(num,den);
impulse(sys)
