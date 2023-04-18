clear; clc;
d = input('Digite o valor para o D[mm]: ');
fprintf('MENU: \n1 - Corda de piano \n2 - Aço revenido em óleo \n3 - Aço encruado \n4 - Aço Liga Cr-Va \n5 - Aço Liga Cr - Si \n Escolha uma opção: ')
opcao = input('');
switch(opcao)
    case 1
        if d >= 0.25 && d <= 6.5
            B = 2153.5;
            a = - 0.1625;
            v1 = 0.25:0.05:0.7;
            v2 = 0.7:0.1:1.2;
            v3 = 1.2:0.2:2.2;
            v4 = 2.2:0.3:2.8;
            v5 = [2.8 3.5];
            v6 = 3.5:0.5:6.5;
            v7 = [v1 v2 v3 v4 v5 v6];
            
            for cont = 1:length(v7)
                if d > v7(cont) && d<= v7(cont+1)
                    d = v7(cont+1);
                end
            end
        
            Sut = B*d^a;
            fprintf('Resistência a tração: %.3f MPa\n', Sut)
             fprintf('Diâmetro corrigido: %.2f mm', d)
        else
            disp('Diâmetro inválido!')
            disp('Insira um diâmetro no intervalo [0.25 - 6.5]!')
        end

    case 2
        if d >= 0.5 && d <= 16
            B = 1831.2;
            a = - 0.1833;
            v1 = 0.5:0.05:0.7;
            v2 = 0.7:0.1:1.2;
            v3 = 1.2:0.2:2.2;
            v4 = 2.2:0.3:2.8;
            v5 = [2.8 3.5];
            v6 = 3.5:0.5:6.5;
            v7 = [v1 v2 v3 v4 v5 v6];
            
            for cont = 1:length(v7)
                if d > v7(cont) && d<= v7(cont+1)
                    d = v7(cont+1);
                end
            end
        
            Sut = B*d^a;
            fprintf('Resistência a tração: %.3f MPa\n', Sut)
             fprintf('Diâmetro corrigido: %.2f mm', d)
        else
            disp('Diâmetro inválido!')
            disp('Insira um diâmetro no intervalo [0.5 - 16]!')
        end
    case 3
        disp('CAse 3')
    case 4
        disp('CAse 4')
    case 5
        disp('CAse 5')

    otherwise
        disp('Outra opção!')

end



