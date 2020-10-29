%% Función a optimizar
%% Entradas
%% valores1 es el primer dato (variable)
%% valores2 es el segundo dato (variable)

%% Salidas
%% fxy valor de la funcion evaluada con las variables
%% columna 1 - funcion
%% columna 2 - probabilidad de la funcion
%% columna 3 - prob. acumulada de la funcion
function [fxy] = fun1xOptimizar(valores1, valores2)
  numElem=size(valores1,1);
  fxy=zeros(numElem, 1);
  for i=1:numElem
    %%ruido=(rand(1)*2)-1;
    %%fxy(i)=abs(sind(valores1(i))-cosd(valores2(i)))+ruido;
    fxy(i)=abs(sind(valores1(i))-cosd(valores2(i)));
  endfor
  total=sum(abs(fxy));
  fxy(:,2)=abs(fxy(:,1))/total;
  fxy(1,3)=fxy(1,2); %% prob. acum = prob de la funcion
  for i=2:numElem
    fxy(i,3)=fxy(i-1,3)+fxy(i,2);
  end
endfunction
