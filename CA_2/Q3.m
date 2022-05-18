clc; clear;
 %% maghadire avalie
price=[5833,5969 ,6172 ,5922 ,6070 ,5971 ,5926 ,5870 ,6104 ,5937 ,5978 ,5969];
saham_avalie=40000;
arzesh_avalie=saham_avalie*price(1);
buycost=0;
sellcost=0;
m=0;
n=0;

 %% mohasebate avalie
for i=1:length(price)
    if price(i)<5930
        m=m+1;
        buycost=800*price(i);
        
    elseif price(i)>6040
        n=n+1;
        sellcost=400*price(i);
         
    end
end
saham_nahayi=saham_avalie+m*800-n*400;
arzesh_nahayi=saham_nahayi*price(end);
sud_zarar=arzesh_nahayi-arzesh_avalie*price(1);

%% khastehaye masaale
% a)
fprintf('mablaghe kharide saham : %d\n',buycost);
% b)
fprintf('mablaghe foroushe saham : %d\n',sellcost);
% c)
fprintf('tedade sahame baghimande : %d\n',saham_nahayi);
fprintf('arzeshe tamame darayi : %d\n',arzesh_nahayi);
fprintf('meghdare sud ya zarar : %d\n',sud_zarar);
