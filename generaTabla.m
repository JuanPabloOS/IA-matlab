%%Genera tabla binaria de n col
%% Entradas
% numEntradas
%% Salda
% tablaBin
function [tablaBin] = generaTabla(numEntradas)
    numPatrones = 2^numEntradas;
    tablaBin = zeros(2^numEntradas, numEntradas);
    potencia = 1;
    for i=numEntradas:-1:1
        for j=1:2^potencia:numPatrones
            tablaBin(j:j+2^(potencia-1)-1,i)=1;
        end
        potencia = potencia + 1;
    end
end

