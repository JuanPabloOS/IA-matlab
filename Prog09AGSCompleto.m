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
umbralCruzar=0.30; 
umbralMutar=0.80; 
numElem=20;
numElemxElit=4; 
numGeneraciones = 100;
%% Poblacion Inicial
[ pobX, valX ] = generarPob( numElem, umbral1s, patronX);
[ pobY, valY ] = generarPob( numElem, umbral1s, patronY);
poblacion(1,:,:)=pobX; %% primer variable
poblacion(2,:,:)=pobY; %% segunda variable
valores(1,:)=valX;
valores(2,:)=valY;

%% Evaluar la poblacion
valFunXY = fun1xOptimizar(valX,valY);

mejores = zeros(valFunXY(:,1), 'descend');
mejores(1)=FuncionOrd(1);
mejores(2)=FuncionOrd(2);
for nGen=1:numGeneraciones

    [nuevaPob, nuevosVal]= generarSigPob ( numElem, poblacion, valFunXY, ...
                                                  patrones, numElemxElit, ...
                                                  umbralCruzar, umbralMutar ); 
    nuevaFunXY = fun1xOptimizar(nuevosVal(1,:)',nuevosVal(2,:)');    
    %% se guardan los nuevo elementos como actuales
    poblacion=neuvaPob;
    valores=nuevosVal;
    valFunXY=nuevaFunXY;
    %% se guardan los menos 2 elementos de la poblacion
    FuncionOrd=sort(valFunXY(:,1),'descend');
    mejores((nGen*2)-1)=FuncionOrd(1)
    mejores((nGen*2))=FuncionOrd(2)
end
%% imprime la poblacion
imprimirElemPseudBinyFuncion( poblacion, valores, valFunXY);


