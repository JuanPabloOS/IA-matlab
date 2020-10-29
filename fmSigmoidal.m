% Funcion de membresia Sigmoidal
% Entradas
% x - Valor de al cual se le calcula membresia
% media - Valor de la media
% omega - Valor de la pendiente
% Salida
% mx - membresia de x
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ mx ] = fmSigmoidal( x, media, omega)

    mx=0;
    valor=exp(-omega*(x-media));
    mx=1/(1+valor);
    if (mx<0.001)
       mx=0;
   end

end

