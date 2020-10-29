% Genera una tabla binaria de n columnas
% Entradas
% numEntradas (las columnas requeridas)
% Salida
% tablaBin (tabla binaria de dichas columnas y 2^n renglones)


function [ tablaBin ] = generarTabBinEsp( numEntradas )

    numPatrones=2^numEntradas;
    tablaBin = zeros(2^numEntradas, numEntradas);
    tablaBin(:, :) = -1;

    potencia=1;
    for i=numEntradas:-1:1
        for j=1:2^potencia:numPatrones
            tablaBin(j:j+2^(potencia-1)-1, i)=1;
        end
        potencia=potencia+1;
    end
end