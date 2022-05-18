clc; clear;

%% input data
n = input('please enter number of vectors: ');
v = zeros(n,2);
for i=1:n
    v(i,1) = input('r: ');
    v(i,2) = input('\theta: ');
end

%% calclating sum of vectors
x=0;
y=0;
r=0;
theta=0;
for i=1:n
    x=x+v(i,1)*cos(v(i,2)*pi/180);
    y=y+v(i,1)*sin(v(i,2)*pi/180);
end

if x~0 || y~=0
    r=sqrt(x^2+y^2);
    theta=atan(y/x)*180/pi;
end

%% output data
fprintf('R= %0.2f \n', r);
fprintf('Theta= %0.2f \n', theta);
fprintf('X= %0.2f \n', x);
fprintf('Y= %0.2f \n', y);
