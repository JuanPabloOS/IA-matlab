%% Derivada de la Primera sigmoidal
%% ENTRADA
%% X - VALOR DE ENTRADA
%% SALIDA
%% Y -VALOR DE LA UNCI�N 
%%%%%%%%%

function [y] = derivSigmoidal1(x)
  y = sigmoidal1(x) * (1-sigmoidal1(x));
endfunction
