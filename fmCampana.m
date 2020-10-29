% Funcion de membresia Campana
% Entradas
% x - Valor de al cual se le calcula membresia
% media - Valor de la media
% sigma - Valor de la desv. estándar
% omega - Valor de la pendiente
% Salida
% mx - membresia de x
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ mx ] = fmCampana( x, media, sigma, omega)

    mx=0;
    if (~(sigma==0))
       valor=((x-media)/sigma)^(2*omega);
       mx=1/(1+valor);
       if (mx<0.001)
           mx=0;
       end
    end
end

