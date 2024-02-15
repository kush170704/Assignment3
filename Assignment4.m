clc;
%1-D steady state heat conduction using matrix 
n=4;
A = zeros(4,4);
for i=1:3
    A(i,i)=2;
    A(i,i+1)=-1;
    A(i+1,i)=-1;
    A(4,4)=2;
end
A_inv=inv(A);
B=[500 0 0 100]';
X=inv(A)*B
L=1;
x=linspace(1,n,4);
plot(x,X)
xlabel('Distance(m)');
ylabel('Temperature(degree C)');
title('Temperature Distribution')
