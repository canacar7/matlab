num = [25];
den = [1 6 25];
t   = 0:0.005:5;
[y,x,t] = step(num,den,t);
tr=1;
while tr < 1.0001;
    tr = tr + 1;
end
rise_time = (tr - 1)*0.005

[ymax,tp] = max(y);   %max fonsyonu icerisinde x konumu ve x baglı y degeri tasir
rise_time = (tp - 1)*0.005

en_buyuk_asim = ymax - 1


s = 1001; 
while y(s) > 0.98 & y(s) < 1.02;
    s = s - 1;
end
yerlesme_zamani = (s - 1)*0.005
