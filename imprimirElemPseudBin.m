%% Print elementos Codificados Pseudobinariamente
%% Entradas
%% elementos - Matriz variables x  elementos x datos
%% Salida pantalla
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = imprimirElemPseudBin( elementos)
    fprintf("Elem.                                Var 1                                     Var 2\n");
    fprintf("=====================================================================================\n"); 
    for i=1:size(elementos,2) %% elemento
        fprintf("%2d.",i);       
        for j=1:size(elementos,1) %% variables
            fprintf("[%1d]",j);            
            for k=1:size(elementos,3) %% datos
              fprintf("%1d",elementos(j,i,k));                
            end
        end
        fprintf("\n");           
    end
   
end
