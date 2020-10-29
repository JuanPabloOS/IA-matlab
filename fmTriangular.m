% Funcion de membresia triangular
% Entradas
% x - Valor de al cual se le calcula membresia
% a - Valor inicial
% b - Valor maximo
% c - Valor final
% Salida
% mx - membresia de x
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ mx ] = fmTriangular( x, a, b, c )

    mx=0;
    if ((x>=a)&&(x<=c)) %% dentro del intervalo?
        dato1=1;
        dato2=1;
        if (a==b)
            if (b==c) 
                mx=fmSingletone(x,a);
            else
                dato2=(c-x)/(c-b);
            end
        else
            dato1=(x-a)/(b-a);
            if (~(b==c))             
                dato2=(c-x)/(c-b);                
            end
        end
        mx=min(dato1,dato2);
    end
end

