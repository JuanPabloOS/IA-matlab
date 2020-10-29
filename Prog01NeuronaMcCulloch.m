clc;
clear all;
close all;

x = generaTabla(2);
w = [1; 1];
%theta = 1;
yAND = neuronaMcCullochPits(x, w, 1);
imprimirDatosNeurona(x, w, yAND);
fprintf('theta =%5.2f \n', 1);

yOR = neuronaMcCullochPits(x, w, 0);
imprimirDatosNeurona(x, w, yOR);
fprintf('theta =%5.2f \n\n', 0);