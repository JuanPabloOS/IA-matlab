% Neurona Perceptron
% Entradas 
% X Vector de entrada
% W vector de pesos  ((numEntradas + 1) x 1) 
% yd vector de salida deseada
% Salidas
% Y vector de salidas calculadas
% WAct vector de pesos actualizados ((numEntradas + 1) x 1) 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [y, wAct] = neuronaPerceptron (x, w, yd)
    numPatrones = size(x, 1);
    numEntradas = size(x, 2);
    
    x(:, numEntradas + 1) = ones(numPatrones, 1);
    
    y = zeros(numPatrones, 1);
    for i = 1:numPatrones
        suma = x(i, :) * w;
        if (suma > 0)
            y(i) = 1;
        else 
            y(i) = -1;
        end
        if (y(i) ~= yd(i))
            fprintf("x(i, :)")
            x(i, :)
            fprintf("yd(i)")
            yd(i)
            DeltaWs = (x(i, :) * yd(i))';
            DeltaWs
            w = w + DeltaWs;            
        end
    end
    wAct = w;
end