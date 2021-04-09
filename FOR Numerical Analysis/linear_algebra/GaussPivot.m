function x = GaussPivot(A,b)
% input:
% A = katsayi matrix
% b = denklem sonuclari

% x = kokler
[m,n]=size(A);

if m ~= n 
    error('kare matris degil');
end

nb = n + 1; %denklem sonuclarini ekledimizde Aug matrisi kolon degeri

Aug = [A,b]
%aug matrisinde karsilastirma yapmam gerekli
%eger a11 0 a yakın veya 0 sa satirlaridegistiricem
%bunu yapmak icin matrisin max degerili kolonunu bulcam

for k=1:n-1
    [max_value,i] = max(abs(Aug([k:n,k]))); %burada k:n e kadar olan satirlarin k nci degerine bakar ve karsilastirma yapar 
    kontrolcu = k + i -1
    if k~=kontrolcu
        Aug([k,kontrolcu],:) =  Aug([kontrolcu,k],:);
    end
    %satirlarimi istedigim forma getirdim simdi ileri elemeyi yapabilirim
    for i = k + 1:n
        katsayi = Aug(i,k) / Aug(k,k);
        Aug(i,k:nb) = Aug(i,k:nb) - katsayi*Aug(k,k:nb)
    end
    
end

x = zeros(n,1);
x(n) = Aug(n,nb) / Aug(n,n);
for i = n-1:-1:1
    x(i) = (Aug(i,nb) - Aug(i,i+1:n)*x(i+1:n)) / Aug(i,i);
end




    
    
    
    
    
    
    
    