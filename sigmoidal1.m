%% Primera sigmoidal
%% ENTRADA
%% X - VALOR DE ENTRADA
%% SALIDA
%% Y -VALOR DE LA UNCI�N 
%%%%%%%%%

function [y] = sigmoidal1(x)
  y = 1 / (1+exp(-x));
endfunction
