%% Cruzamiento de codigos pseudo-binarios
%% de los elementos 1 y 2 
%% Entradas:
%% pobActual - Un vector con las variables actuales de la poblaci?n
%%             Ejem: 1 - pobX, 2 - pobY, 3 - pobZ, etc. 
%% patrones - Un vector de los patrones las variables
%%            Ejem: 1 - patron X, 2 - patron Y, 3 - patron Z, etc.
%%          - Cada uno es estructura que contiene los valores de cada
%%          posici?n para representar el rango. Contiene:
%%             signo - bandera booleana
%%             valIni - Valor inicial de donde parte el intervalo
%%             datos - valores numericos de cada posicion
%% par - elementos seleccionados que podr?an cruzar
%% Salidas:
%% parNuevo - vector con las variables cruzadas (hibridos)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
function [ parNuevo ] = cruzamiento( pobActual, patrones, par)
    
    numVariables=size(pobActual,1);
    parNuevo=zeros(numVariables,2,size(pobActual,3));
    for i=1:numVariables
        numPosiciones=size(patrones(i).datos,2);
        if (patrones(i).signo)
            numPosiciones=numPosiciones+1;
        end
        mitad=round(numPosiciones/2);
        %% primer hibrido
        parNuevo(i,1,1:mitad)=pobActual(i,par(1),1:mitad);
        parNuevo(i,1,mitad+1:numPosiciones)=...
            pobActual(i,par(2),mitad+1:numPosiciones);
        %% segundo hibrido
        parNuevo(i,2,1:mitad)=pobActual(i,par(2),1:mitad);
        parNuevo(i,2,mitad+1:numPosiciones)=...
            pobActual(i,par(1),mitad+1:numPosiciones);        
    end 
end
