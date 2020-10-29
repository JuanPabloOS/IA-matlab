clc;
clear all;
close all;

x = generaTabla(3);
C=3;
n=[3;3;1]
w = rand(C,max(n), max(n));
u=rand(C,max(n));
alpha=0.65;
yd=1;
[y, wAct, uAct] = redPerceptron(x(1,:), C, n, w, u,alpha, 1);
%% yd = [7:-1:0];
%% alpha = 0.5;
%% numEpocas = 10;

%for i=1:numEpocas
 %   [yDecod, wNew] = neuronaAdaline(x,w,yd,alpha);
  %  w = wNew;
%end
%imprimirDatosNeuronaAdaline(x, wNew, yd, yDecod);
