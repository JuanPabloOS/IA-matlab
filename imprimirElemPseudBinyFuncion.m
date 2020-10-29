%% Print elementos Codificados Pseudobinariamente
%% Entradas
%% elementos - Matriz variables x  elementos x datos
%% valores - Valores numéricos variables x  elementos
%% funcionXY - Funcion calculada por cada elemento
%% Salida pantalla
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = imprimirElemPseudBinyFuncion( elementos, valores, funcionXY )
    fprintf("Elem.                                Var 1                                     Var 2      Funcion(x,y) \n");
    fprintf("=======================================================================================================\n"); 
    for i=1:size(elementos,2) %% elemento
        fprintf("%2d.",i);       
        for j=1:size(elementos,1) %% variables
            fprintf("[%1d]",j);            
            for k=1:size(elementos,3) %% datos
              fprintf("%1d",elementos(j,i,k));                
            end
            fprintf("%15.5f",valores(j,i)); 
        end
        fprintf("%15.5f\n",funcionXY(i));           
    end
   
end
