%% Corte alfa de un conjunto
%% Entradas
%% A -conjunto difuso
%% alfa - valor de referencia
%% Salida
%% B - conjunto con el corte alfa 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [B] = corteAlfa(A, alfa)
    B=zeros(size(A)); 
    for i=1:size(A,2)
        if (A(i)>=alfa)
            B(i)=1;
        end
    end
end

