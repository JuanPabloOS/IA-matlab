%%Neurona McCulloch-Pits
%%Entradas
% x vector de entredas
% w vector de pesos (numEntradas x 1)
% theta referencia
% y vector de salidas

function [y] = neuronaMcCullochPits(x, w, theta)
    numPatrones = size(x,1); %renglones
    numEntradas = size(x,2); %columnas
    y = zeros(numPatrones, 1);
    for i = 1:numPatrones
        suma = x(i,:) * w;
        if(suma > theta)
            y(i) = 1;
        end
    end
end

