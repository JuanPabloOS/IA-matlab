%% Genera la poblacion de n elementos considerando 
%% el patron de codificacion
%% Entradas
%% n - Numero de elementos de la poblacion
%% umbral - valor entre 0 y 1, que define a partir del cual
%%          se generan 1's (Generalmente 0.5)
%% ?patron -  estructura que contiene los valores de cada
%%          posici?n para representar el rango. Contiene:
%%             signo - bandera booleana
%%             valIni - Valor inicial de donde parte el intervalo
%%             datos - valores numericos de cada posicion
%% Salida:
%%   poblacion- n elementos con los bits generados aleatoriamente
%%   valores - n elementros generados con su valor que representan
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ poblacion, valores ] = generarPob( n, umbral, patron )
   m=size(patron.datos,2);
   if (patron.signo)
       m=m+1;
   end
   poblacion=zeros(n,m);
   valores=zeros(n,1);
   valAleatorios=rand(n,m);
   ind1s=find(valAleatorios>=umbral);
   poblacion(ind1s)=1;
   valores=deCodifPseudoBinaria(poblacion, patron );
end
