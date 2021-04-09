function x = gauss_naive(A,b)
% input:
% A denklemin katsayi matrisi
% b dgerlerii
% output 
% kokler
[m,n] = size(A); %matrisin boy olculeri alcam
if m~=n
    error('matris kare matris degil'); 
end

nb = n + 1; %aug matrisine eklenecek olan matrisin sayisal ifade olrak temsil eder
Aug = [A,b] %bu matris üzerinde sait sutun islemleri uygulayarak eleminasyon yapicam

%mantigina bakacak olursak; elemanlari kontrol ederek ilerlicem
%ilk olarak a11 ve a12 yi sonra a11 ve a13 u incelicem ardından 
%a22 ve a23 u incelicem 
%!! 3*3 matrisde kodu denemek icin basit bir algoritma

%son satiri kontrol etmemize gerek yok cunku biz alt ucgeni sifirlicaz
%katsayini bulcaz a21/a11 nin
%bulunan katsayi 2. satirdan cıkarılarak yeni aug bulunca ....

for i = 1 : n - 1       
    for  j = i + 1 : n   
        katsayi = Aug(j,i) / Aug(i,i)
        Aug(j,i:nb) = Aug(j,i:nb) - katsayi*Aug(i,i:nb)  %%sutun aralıklarina bida bak
    end
end

%geri koyma yönteminde ise;
%x3 = a''34 / a''33
%x2 = (a'24 - a'23x3) / a'22
%x1 = (a14 - a13x3 - a12x2) / a11
%kodda formülüze edilmis halini kullancaz

x = zeros(n,1);
x(n) = Aug(n,nb) / Aug(n,n)
for i= n-1:-1:1
    %formule bakcak olursa (ai4 - toplam_sembol(aij*xj)) / aii
    x(i) = (Aug(i,nb) - Aug(i,i+1:n)*x(i+1:n)) / Aug(i,i);
end



 











