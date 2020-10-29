%% Codificacion Pseudobinaria de un rango de valores
%% cubre los casos     0 ..+valor
%%                     0 ..-valor
%%                 -valor..+valor
%% Entradas
%% valorIni - valor inicial del rango
%% valorFin - valor final del rango
%% Salida
%% Codigo - estructura que contiene los valores de cada
%%          posici?n para representar el rango
%%          contiene:
%%             signo - bandera booleana
%%             valIni - Valor inicial de donde parte el intervalo
%%             datos - valores numericos de cada posicion
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ codigo ] = codifPseudoBinaria( valorIni, valorFin )
     codigo.signo=false;
     codigo.valIni=0; 
     codigo.datos(1)=0;
     if (valorFin<valorIni) %% se asegura que valorIni<valorFin
         temp=valorFin;
         valorFin=valorIni;
         valorIni=temp;
     end
     if (valorIni==(valorFin*-1))  %% caso 3
         codigo.signo=true;
         valorIni=0;
     else %% casos 1, 2, 4
         valorFin=valorFin-valorIni; %% ancho de un intervalo
         codigo.valIni=valorIni;
     end
     valorEntero=floor(valorFin);
     valorDecimal=valorFin-valorEntero;
     parteEntera=0; %% acumulador entero que lleva lo que falta codificar
     parteDecimal=0;%% acumulador decimal que lleva lo que falta codificar
     if (valorEntero>0)
         parteEntera(1)=1; %% 2^0
         valorSig=2; %% 2^1
         valorEntero=valorEntero-1; %% 2^0 ya está, se resta entonces
         i=2; %% posición de los valores
         while ((valorEntero-valorSig)>=0) %% valorEntero >= valorSig
             parteEntera(i)=valorSig;
             valorEntero=valorEntero-valorSig;
             valorSig=valorSig*2;
             i=i+1;
         end
         if (valorEntero>0)
             parteEntera(i)=valorEntero; %% ajuste de enteros
         end
     end
     if (valorDecimal>0)
         valor=0.5; %% 2^(-1)
         while (valor>=valorDecimal)
             valor=valor/2;
         end
         parteDecimal(1)=valor;
         valorDecimal=valorDecimal-valor;
         valorSig=valor/2;
         i=2;
         epsilon=0.0001; %%precision de la codificacion
         while ((valorDecimal>epsilon)&&(valorSig>epsilon))
             if ((valorDecimal-valorSig)>epsilon)
                parteDecimal(i)=valorSig;
                valorDecimal=valorDecimal-valorSig;
                i=i+1;
             end
             valorSig=valorSig/2;
         end   
          if (valorDecimal>0)
             parteDecimal(i)=valorDecimal;  %% ajuste de decimales
          end        
     end
     if (size(parteEntera,2)>1) %%si existe parte entera codificada
         if (size(parteDecimal,2)>1)
             codigo.datos=horzcat(parteDecimal,parteEntera);
         else
             codigo.datos=parteEntera;
         end
     else
         if (size(parteDecimal,2)>1)
             codigo.datos=parteDecimal;
         end
     end
     codigo.datos=sort(codigo.datos,'descend');
end
