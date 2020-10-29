%%Neurona Adaline
% Entradas
% x vector de entredas
% w vector de pesos (numEntradas x 1)
% yd -- vectro de salidas esperadas
% alpha -- factor de aprendizaje
% y vector de salidas
% wAct -- vector de pesos actualizados

function [y, wAct] = neuronaAdaline(x, w, yd, alpha)
    numPatrones = size(x,1); %renglones
    numEntradas = size(x,2); %columnas
    
    epsilon = 0.00001
    y = zeros(numPatrones, 1);
    y
    for i = 1:numPatrones
        suma = x(i,:) * w;
        y(i)= suma;
        error = yd(i)-y(i);
        if(abs(error) > epsilon)
            DeltaWs = (alpha * error * x(i, :))'; %el simbolo la transpone
            w = w + DeltaWs;
        end
    end
    wAct = w;
end

