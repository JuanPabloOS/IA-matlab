clc;
clear all;
close all;

x = generaTabla(3);
w = [0.15; 0.15; 0.15];
yd = [7:-1:0];
alpha = 0.5;
numEpocas = 10;

for i=1:numEpocas
    [yDecod, wNew] = neuronaAdaline(x,w,yd,alpha);
    w = wNew;
end
imprimirDatosNeuronaAdaline(x, wNew, yd, yDecod);
