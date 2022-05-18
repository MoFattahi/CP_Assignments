clc; clear; 
 %% parametr haye masale
b = [1 28 3; 7 18 7; 8 16 4; 17 2 5; 22 10 2; 27 8 6];
x = 0:30;
y = 0:30;
price = zeros(length(x),length(y));

 %% mohasebeye hazineye tahvile haftegi
for i=1:length(x)
    for j=1:length(y)
        for k=1:6
            price(i,j) = 0.5*(b(k,3))*sqrt((b(k,1)-x(i))^2 + (b(k,2)-y(j))^2) + price(i,j);
            
        end
    end
end

 %% peida kardane x va y dar price(minimum)
f = price <= min(min(price));
m = find(f);
Xmin = rem(m,length(y)) - 1
Ymin = floor(m/length(x))