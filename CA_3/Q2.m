clc ;
clear ; 
close all ;

r = linspace(0,2,100)
tetta = linspace(0,2*pi) ;
fi = linspace(0,pi/2)

[R , T ] = meshgrid(r,tetta)
[Ti , Fi ] = meshgrid(tetta,fi)

x1 = R .*cos(T)
y1 = R .*sin(T)
z1 = 4.*R

x2 = 2 *cos(Ti).*sin(Fi)
y2 = 2 *sin(Ti).*sin(Fi)
z2 = 2 *cos(Fi)

surf(x1,y1,z1)
hold on
surf(x2,y2,z2+8)
view([1 1 1])




