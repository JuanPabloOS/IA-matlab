% Funcion de membresia Gaussiana
% Entradas
% x - Valor de al cual se le calcula membresia
% media - Valor de la media
% sigma - Valor de la desv. estándar
% Salida
% mx - membresia de x
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ mx ] = fmGaussiana( x, media, sigma)

    mx=0;
    if (~(sigma==0))
       valor=((x-media)/sigma)^2;
       mx=exp(-valor);
       if (mx<0.001)
           mx=0;
       end
    end
end

