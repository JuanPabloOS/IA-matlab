%% Seleccion por pares de elementos
%% Entradas
%% fxy  1er columna valor real de la funcion dado los par?metros 
%%                  x y y recibidos
%%      2da columna probabilidad de la funcion
%%      3er columna prob. acumulada de la funcion
%% Salida
%%  par - Los indices de los dos elementos
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ par ] = selxPar( fxy )

    valorAleat=rand(1);
    ind1=1;
    while (fxy(ind1,3)<valorAleat)
        ind1=ind1+1;
    end
    ind2=ind1;
    while (ind1==ind2)
        valorAleat=rand(1);
        ind2=1;
        while (fxy(ind2,3)<valorAleat)
            ind2=ind2+1;
        end     
    end
    par(1)=ind1;
    par(2)=ind2;
end
