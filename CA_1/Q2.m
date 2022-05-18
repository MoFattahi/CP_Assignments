clear
clc
syms t
d1=800-320*t;
d2=410-160*t;
D=(800-320*t)/cosd(atand((410-160*t)/(800-320*t)));
distance=(128000*t^2-643200*t+808100)-2500;
t=linspace(0,15,5);
d1=800-320*t;
plot(t,d1)
hold on
d2=410-160*t;
plot(t,d2)
hold on 
ezplot(D,t)
s=sym2poly(distance);
roots(s)