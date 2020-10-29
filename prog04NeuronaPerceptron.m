clc;
clear all;
close all;

x = generarTabSinEsp(2);
w = [1.75; -1.5; 0.5];
yd = [1; -1; -1; -1];
##w = [2.5; 1.5; -2.5, 0.5];
##yd = [-1; 1; 1; -1,1,-1,-1,1];

[yAnd, wNew] = neuronaPerceptron(x, w, yd);
imprimirDatosNeuronaPercep(x, wNew, yd, yAnd);