num = [3 25 72 80];
den = [1 8 40 96 80];
step(num,den);
v = [0 3 0 1.2]; %%x ekseni icin 
axis(v);
grid;

%%resiude ile r,p,k si buluncak
[r,p,k] = residue(num,den)
