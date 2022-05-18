clear
clc
syms x;
f(x)=(cos(x))*cosh(x)+1;
df=diff(f,x);
a=10;
b=double(a-(f(a))/df(a));
e=sqrt(b-a)^2;
n=1;
while e >= 0.01
    a=b;
    b=double(a-(f(a))/df(a));
    e=sqrt((b-a)^2);
n=n+1;
end
disp(n)