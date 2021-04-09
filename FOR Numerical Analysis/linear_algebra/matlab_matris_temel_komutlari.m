c = randn(3) %3 3 matrix olusturdum

fprintf('matrisin tersi');  
c_t = inv(c)  

fprintf('matrisin kaça kaçlik oldugu');  
size(c)       
fprintf('matrisin determinanti');  
det(c)      
fprintf('matrisin kolonlarındaki en buyuk sayilari bulur');  
max(c)       
fprintf('matrisin kolonlarındaki en kucuk sayilari bulur');  
min(c)        
fprintf('matrisin her kolonunun toplamini verir');  
sum(c)        
fprintf('matrisin kolonun ortalamasini verir');  
mean(c)       
fprintf('diagonal deki degerlerdir');  
diag(c) 

fprintf('birim matris uretir');  
d = eye(4)  

