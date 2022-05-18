clear
clc
syms t;
P=250*exp(t/25);
Y=0.01*(P)^2+2000*P+50;
double(int(Y,t,0,50))