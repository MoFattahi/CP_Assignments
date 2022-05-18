clear
clc
L1=input('ENTER L1:');
L2=input('ENTER L2:');
A=linspace(0,180);
B=asind((L2*sind(A))/L1);
d=(L1*cosd(B)+L2*cosd(A));
plot(A,d)