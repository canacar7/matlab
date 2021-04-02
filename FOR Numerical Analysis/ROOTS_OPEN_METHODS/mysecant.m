function x = mysecant (f , x0 , x1 , n )

% x0 = 0.5 ve x1 = 0.4
% f fonksiyon
% x0 -- baslangic tahmini
% x1 -- ikinci tahmin
% n -- iterasyon sayisi

y0 = f ( x0 );
y1 = f ( x1 );
for i = 1: n 
x = x1 - (y1 * ( x0 - x1 )) /( y0 - y1 ) % secant formul .
y = f ( x ) 

x0 = x1 ;
y0 = y1 ;
x1 = x ;
y1 = y ;
end
end