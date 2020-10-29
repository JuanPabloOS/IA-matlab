%% Decodifica el valor real de cada elemento de la poblacion 
%% considerando el patron de codificacion
%% Entradas
%%  poblacion- n elementos con los bits generados 
%% ´patron -  estructura que contiene los valores de cada
%%          posicion para representar el rango. Contiene:
%%             signo - bandera booleana
%%             valIni - Valor inicial de donde parte el intervalo
%%             datos - valores numericos de cada posicion
%% Salida:
%%   valores - n elementros generados con su valor que representan
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ valores ] = deCodifPseudoBinaria( poblacion, patron )
   valores=zeros(size(poblacion,1),1);
   numCols=size(poblacion,2);
   if (patron.signo) %% es un intervalo con signo?
       valores=poblacion(:,2:numCols)*(patron.datos');
       signos=poblacion(:,1);
       indNegativo=find(signos==0); %% signo negativo
       valores(indNegativo)=valores(indNegativo)*-1;
   else
       valores=poblacion(:,1:numCols)*(patron.datos');
   end
   valores=valores+patron.valIni;
end
