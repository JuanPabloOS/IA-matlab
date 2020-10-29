%% Seleccion por elitismo de los mejores elementos
%% de una generacion, basado en su funcion
%% Entradas
%% fxy  1er columna valor real de la funcion dado los parámetros 
%%                  x y y recibidos
%%      2da columna probabilidad de la funcion
%%      3er columna prob. acumulada de la funcion
%% k - Numero de elementos mejores a seleccionar
%% Salida
%% winners - Los mejores elementos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ winners ] = selElitismo( fxy, k )
    orden=sort(fxy(:,1),'descend');
    winners=zeros(k,1);
    for i=1:k
        elemento=find(fxy(:,1)==orden(i));
        winners(i)=elemento(1);
    end
end

