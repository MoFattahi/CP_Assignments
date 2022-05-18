clear
clc
situation="determine L using value and angle"
V=input("Enter value of ice cream:");
a=input("Enter the value of tetha:");
L=((3*V)/((pi)*((sind(a/2))^2)*(2*sind(a/2)+cosd(a/2))))^(1/3)
L=0;a=0;V=0;
situation="determine value using angle and L"
a=input("Enter value of angle:");
L=input("Enter the value of L:");
V=((pi*L^3)/3)*((sind(a/2))^2)*(2*sind(a/2)+cosd(a/2))
L=0;a=0;V=0;
situation="determine angle using value and L"
V(1,1)=input("Enter value of value:");
L(1,1)=input("Enter the value of L:");
syms c
angle=fzero(inline(((pi*(L^3))/3)*((sind(c/2))^2)*(2*sind(c/2)+cosd(c/2))-V),0)