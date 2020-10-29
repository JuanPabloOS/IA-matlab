% Funcion de membresia Singletone
% Entradas
% x - Valor de al cual se le calcula membresia
% media - Valor de la media
% Salida
% mx - membresia de x
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ mx ] = fmSingletone( x, media)

    mx=0;
    epsilon=0.01;
    valorIni=media-epsilon;
    valorFin=media+epsilon;
    if ((x>=valorIni)&&(x<=valorFin))
       mx=1;
   end

end

