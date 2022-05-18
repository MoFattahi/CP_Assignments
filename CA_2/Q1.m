clc; clear; close all;
 %% moteghayer ha
x = 0:0.01:2*pi;
y = zeros(1,length(x));

 %% bedast avardane y ha
for i=1:length(x)
    if x(i)<pi/2
        y(i) = 6*(2*x(i)-0.5*sin(x(i)))/pi;
        
    elseif x(i)<2*pi/3
        y(i) = 6;
   
    elseif x(i)<4*pi/3
        y(i) = 6-3*(1-0.5*cos(3*x(i)-2*pi));
            
    elseif x(i)<3*pi/2
        y(i) = 3;
            
    elseif x(i)<7*pi/4
        y(i) = 3-1.5*((x(i)-3*pi/2)/(pi/4))^2;
    
    else
        y(i) = 0.75-0.75*(1-((x(i)-7*pi/4)/(pi/4)))^2;
        
    end
    
end

 %% rasme nemudar
plot(x, y, 'r-');
title('y - \theta');
ylabel('y');
xlabel('\theta');