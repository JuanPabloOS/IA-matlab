%% Primera sigmoidal
%% ENTRADA
%% X - VALOR DE ENTRADA
%% SALIDA
%% Y -VALOR DE LA UNCIÓN 
%%%%%%%%%

function [y] = sigmoidal1(x)
  y = 1 / (1+exp(-x));
endfunction
