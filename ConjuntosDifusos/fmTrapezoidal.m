% Funcion de membresia trapezoidal
% Entradas
% x - Valor de al cual se le calcula membresia
% a - Valor inicial
% b - Valor inicial maximo
% c - Valor final maximo
% d - Valor final
% [ a b c d ]
% Salida
% mx - membresia de x
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ mx ] = fmTrapezoidal( x, a, b, c, d)

    mx=0;
    if ((x>=a)&&(x<=d)) %% dentro del intervalo?
        dato1=1;
        dato2=1;
        if (b==c)  %% triangulo
            mx=fmTriangular( x, a, b, d); 
        else
            if (a==b) 
               if (~(c==d))   
                  dato2=(d-x)/(d-c);
               end                         
            else
               dato1=(x-a)/(b-a);
               if (~(c==d))   
                  dato2=(d-x)/(d-c);
               end
            end
            mx=min(min(dato1,dato2),1);
        end        
    end
end

