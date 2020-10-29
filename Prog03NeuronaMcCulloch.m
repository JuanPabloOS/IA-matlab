%$casos de alimentacion a una bomba
clc;
clear all;
close all;

%%
%%caso 1: una de dos alimentaciones y un conducto
x = generaTabla(3);
w = [1; 1; 2];
theta = 2;
y = neuronaMcCullochPits(x, w, theta);
imprimirDatosNeurona(x, w, y);
fprintf('theta =%5.2f \n', theta);

%%
%%caso 1: dos de tres alimentaciones y un conducto
x = generaTabla(4);
w = [1; 1; 1; 3];
theta = 4;
y = neuronaMcCullochPits(x, w, theta);
imprimirDatosNeurona(x, w, y);
fprintf('theta =%5.2f \n', theta);

