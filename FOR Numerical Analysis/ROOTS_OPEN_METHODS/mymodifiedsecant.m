function x = mymodifiedsecant (f , x0 , ro , n )

% x0 = 0.5 ve x1 = 0.4
% f fonksiyon
% x0 -- baslangic tahmini
% ro 
% n -- iterasyon sayisi

y0 = f ( x0 );
y1 = f (x0 + x0*ro);
for i = 1: n 
x = x0 - ((ro*x0*y0) / (y1 - y0)) % modified_secant formul .
y = f (x) ;
y_ro = f(x + ro*x);

y0 = y ;
x0 = x ;
y1 = y_ro;

end
end