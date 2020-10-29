close all;
clear all;
clc;

valorMax=1;
numFormas=10;
codigos=zeros(numFormas,numFormas+2);
numValores=zeros(numFormas,1);
exponente=0;
tic;
figure;
hold on;
for i=1:numFormas %% Formas de representar el intervalo
    exponente=-1;
    for j=1:(i+1)
        codigos(i,j)=2^exponente;
        exponente=exponente-1;
    endfor
    %%codigos(i,1:numFormas+1)
    codigos(i,i+2)=valorMax-sum(codigos(i,1:i+1));
    
    tablaVerdad=generaTabla(i+2);
    
    valores=tablaVerdad*codigos(i,1:i+2)';
    numValores(i)=size(unique(valores),1);
    plot(valores,'color',rand(1,3), 'marker','*');
    
endfor
toc;

title('Propuestas de codificacion');
xlabel('codigo');
ylabel('valor');
grid on;

figure;
plot(numValores,'b','Linewidth',3);
title('Numero de valores representados por propuesta');
xlabel('codigo');
ylabel('Num. Valores');
grid on;
axis([1, numFormas, 0, numValores(numFormas)*1.1])