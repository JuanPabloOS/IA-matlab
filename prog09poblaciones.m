close all;
clear all;
clc;

%% x = [-180..180] precision decimal
%% y = [-180..180] precision decimal

patronX=codifPseudoBinaria(-179.99999, 179.99999);
patronY=codifPseudoBinaria(-179.99999, 179.99999);
patrones(1)=patronX;
patrones(2)=patronY;

imprimirCodifPseudoBinaria(patronX);
imprimirCodifPseudoBinaria(patronY);

umbral1s=0.5; 
umbralCruzar=0.3;
umbralMutar=0.8;
numElem=20;
numElemxEli=4;
%% Poblacion Inicial
[ pobX, valX ] = generarPob( numElem, umbral1s, patronX);
[ pobY, valY ] = generarPob( numElem, umbral1s, patronY);
poblacion(1,:,:)=pobX; 
poblacion(2,:,:)=pobY;
valores(1,:)=valX;
valores(2,:)=valY;

%% Evaluar la poblacion
valFunXY = fun1xOptimizar(valX,valY);


[nuevaPob, nuevosVal] = generarSigPob(numElem, poblacion, valFunXY, ...
                                      patrones, numElemxEli,...
                                      umbralCruzar, umbralMutar);
nuevaFunXY = fun1xOptimizar(nuevosVal(1,:)', nuevosVal(2,:)');

elemMejores=selElitismo(valFunXY,4); %% Seleccion de los 8 mejores
par1=selxPar(valFunXY); 

%% imprime la poblacion
imprimirElemPseudBinyFuncion( poblacion, valores, valFunXY);
imprimirElemPseudBinyFuncion( nuevaPob, nuevosVal, nuevaFunXY);


