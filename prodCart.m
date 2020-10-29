%% Producto Cartesiano y Coproducto
%% entradas
%% C1, C2 Conjuntos difusos
%% band Tipo de operacion
%%      1 - producto
%%      2 - coproducto
%% salida
%%   C1xC2 - Producto/coproducto cartesiano
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [C1xC2] = prodCart(C1,C2,band)
    C1xC2=zeros(size(C1,2),size(C2,2));
    for i=1:size(C1,2)
        for j=1:size(C2,2)
            if (band==1)
                C1xC2(i,j)=min(C1(i),C2(j));
            else
                C1xC2(i,j)=max(C1(i),C2(j));
            end
        end
    end
end





