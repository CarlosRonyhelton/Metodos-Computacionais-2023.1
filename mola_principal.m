clear; clc;
d = input('Digite o valor para o D[mm]: ');
fprintf('MENU: \n1 - Corda de piano \n2 - Aço revenido em óleo \n3 - Aço encruado \n4 - Aço Liga Cr-Va \n5 - Aço Liga Cr - Si \n Escolha uma opção: ')
opcao = input('');
switch(opcao)
    case 1
        if d >= 0.25 && d <= 6.5
            B = 2153.5;
            a = - 0.1625;
            selecao_diametro(d, B, a)
        else
            disp('Diâmetro inválido!')
            disp('Insira um diâmetro no intervalo [0.25 - 6.5]!')
        end

    case 2
        if d >= 0.5 && d <= 16
            B = 1831.2;
            a = - 0.1833;

            selecao_diametro(d, B, a)
        else
            disp('Diâmetro inválido!')
            disp('Insira um diâmetro no intervalo [0.5 - 16]!')
        end
    case 3
        if d >= 0.5 && d <= 16
            B = 1753.3;
            a = - 0.1822;

            selecao_diametro(d, B, a)
        else
            disp('Diâmetro inválido!')
            disp('Insira um diâmetro no intervalo [0.5 - 16]!')
        end

    case 4
        if d >= 0.5 && d <= 13
            B = 1909.9;
            a = - 0.1473;

            selecao_diametro(d, B, a)
        else
            disp('Diâmetro inválido!')
            disp('Insira um diâmetro no intervalo [0.5 - 13]!')
        end

    case 5
        if d >= 0.8 && d <= 11
            B = 1909.9;
            a = - 0.1473;
            
            selecao_diametro(d, B, a)
        else
            disp('Diâmetro inválido!')
            disp('Insira um diâmetro no intervalo [0.8 - 11]!')
        end

    otherwise
        disp('Outra opção!')

end
