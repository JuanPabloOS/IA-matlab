%% Primera sigmoidal
%% ENTRADA
%% X - VALOR DE ENTRADA
%% SALIDA
%% Y -VALOR DE LA UNCI�N 
%%%%%%%%%

function [y] = sigmoidal2(x)
  y = (1 - exp(-x)) / (1+exp(-x));
endfunction
