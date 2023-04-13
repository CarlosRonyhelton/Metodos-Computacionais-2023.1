clear; clc;
d = input('Digite o valor para o D[mm]: ');
if d >= 0.25 && d <= 6.5
    B = 2153.5;
    a = - 0.1625;
    v1 = 0.25:0.05:0.7;
    if d> v1(1) && d<= v1(2)
        d = 0.3;
    elseif d> v1(2)&& d<= v1(3)
        d = 0.35;
    end
%     if d> 0.25 && d<= 0.3
%         d = 0.3;
%     elseif d> 0.3 && d<= 0.35 
%         d = 0.35;
%     end
    v2 = 0.7:0.1:1.2;
    v3 = 1.2:0.2:2.2;
    v4 = 2.2:0.3:2.8;
    v5 = [2.8 3.5];
    v6 = 3.5:0.5:6.5;
    Sut = B*d^a;
    fprintf('Resistência a tração: %.3f MPa', Sut)
else
    disp('Diâmetro inválido!')
    disp('Insira um diâmetro no intervalo [0.25 - 6.5]!')
end


