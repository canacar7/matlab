function x = mynewton (f , f1 , x0 , n )
    % f -- fonksiyon
    % f1 -- 1.turev
    % x0 -- ilk tahmin 0.3
    % n -- iterasyon say�s� 3
    x = x0 ; 
for i = 1: n 
    x = x - f ( x ) / f1 ( x ) % Newton Rapshon form�l�
end
end