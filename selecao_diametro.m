function [] = selecao_diametro(d, B, a)

    v1 = 0.25:0.05:0.7;
    v2 = 0.7:0.1:1.2;
    v3 = 1.2:0.2:2.2;
    v4 = 2.2:0.3:2.8;
    v5 = [2.8 3.5];
    v6 = 3.5:0.5:6.5;
    v7 = 7:16;
    v8 = [v1 v2 v3 v4 v5 v6 v7];

    for cont = 1:length(v8)
        if d > v8(cont) && d<= v8(cont+1)
            d = v8(cont+1);
        end
    end

    Sut = B*d^a;
    fprintf('Resistência a tração: %.3f MPa\n', Sut)
    fprintf('Diâmetro corrigido: %.2f mm', d)
end

