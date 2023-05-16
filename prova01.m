clear; clc;
% Solicita ao usuário que insira os códigos de matrícula
matricula1 = input('Insira a primeira matrícula: ','s');
matricula2 = input('Insira a segunda matrícula: ','s');

% Obtém o último dígito de cada matrícula
digito1 = str2double(matricula1(end));
digito2 = str2double(matricula2(end));

% Verificando se algum valor inserido é igual a 0 e somando com 7 caso necessário
if digito1 == 0
    digito1 = digito1 + 7;
end
if digito2 == 0
    digito2 = digito2 + 7;
end

if digito1 < digito2
    digito_menor = digito1;
else 
    digito_menor = digito2;
end

% Calculando a soma dos valores dos dígitos de matrícula
soma = digito1 + digito2;

fprintf('Menu:\n1 – Série de rosca grossa\n2 – Série de rosca fina\n')
opcao = input('Insira a opção que deseja: ');

v1_d = [3 3.5 4 5];
v2_d = 6:2:24;
v3_d = 27:3:42;
v4_d = 48:8:80;
v5_d = [90 100];
vetor_d = [v1_d v2_d v3_d v4_d v5_d];

% Verificando se a soma é par ou ímpar e assossiando a seleção ao vetor de passos correspondente
if mod(soma, 2) == 0
    opcao = 2;
    v1_p = linspace(0,0,5);
    v2_p = [1 1.25 1.25];
    v3_p = linspace(1.5,1.5,5);
    v4_p = [2 2 2 2 3 3];
    v5_p = linspace(2,2,8);
    vetor_p = [v1_p v2_p v3_p v4_p v5_p];
else
    opcao = 1;
    v1_p = 0.5:0.1:0.8;
    v2_p = 1:0.25:2;
    v3_p = [2 2.5 2.5 2.5 3 3 3.5 3.5 4 4 4.5 5 5.5 6 6 6 6 6];
    vetor_p = [v1_p v2_p v3_p];
end

% Exibindo as especificações de roscas métricas dentro do intervalo considerado
for cont = 1:length(vetor_d)
    if digito_menor <= vetor_d(cont) && soma >= vetor_d(cont)
        fprintf('M%d x %.2f\n', vetor_d(cont), vetor_p(cont))
    end
end

