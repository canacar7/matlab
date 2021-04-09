%matrisin teri ile kok bulma
A = [.3 .52 1;.5 1 1.9;.1 .3 .5];
b = [-.01; .67; -.44];
x_kok_inv = inv(A) * b 
x_kok_left_d = A \ b

%cramer yontemi
A1= A;
A2= A;
A3= A;
D = det(A);
A1(:,1) = [-0.01;0.67;-0.44]  %1. sutuna kokler b eklendi
x1 = det(A1) / D
A2(:,2) = [-0.01;0.67;-0.44]  %1. sutuna kokler b eklendi
x2 = det(A2) / D
A3(:,3) = [-0.01;0.67;-0.44]  %1. sutuna kokler b eklendi
x3 = det(A3) / D



