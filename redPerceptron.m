%%Red perceptrón
%Activación de un patrón
% Entradas
% x vector de entradas (un solo renglon)
% C num de capas
% n numero de neuronas por cada capa
% w vector de pesos (# capa, 
%                    #neurona origen, 
%                    #neurona destino en sig capa)
% u vector de umbrales (#capa, #neurona)
% alpha facto de aprendizaje
%Salidas
% y vector de activaciones (#capa, #neurona)
% yd vector de salida deseada
% sumas vector de sumas    (#capa, #neurona)
%%%%%%%%%%%%%%%%%%%%%%

function [a,wAct,uAct] = redPerceptron(x, C, n, w, u, alpha, yd)
  
    numEntradas = size(x,2); %columnas    
    wAct=0;
    uAct=0;
    a = zeros(C, max(n)); %%a (#capa, #neurona)
    sumas = zeros(C, max(n)); %% sumas (#capa, #neurona)
    delta = zeros(C, max(n));%% delta(#capa, #neurona)
    y=0;
    a(1,1:n(1))=x(1,:); %%asignacion de entradas como salidas de capa 1
    for i=2:C %%recorrer las capas
        for j=1:n(i) %% recorrer neurona
            suma=(a(i-1,1:n(i-1))*w(i-1,1:n(i-1),j)')+u(i,j);
            sumas(i,j)=suma;
            a(i,j)=1/(1+exp(-suma));
        end
    end
    %%Algoritmo de retropropagación
    %% delta de capa final
    for i=1:n(C) %% recorrer las neuronas de la ultima capa
        delta(C, i) = (yd(i) - a(C, i)) * derivSigmoidal1(sumas(C, i));
    end 
    %% delta de capas ocultas
    for numC=(C-1):-1:2 %% de la capa penultima a la 2da
        for i=1:n(numC) %% cada neurna de las capas ocultas
            factor=0;
            for k=1:n(numC+1)
              factor = factor+delta(numC+1, k)*w(numC,i,k)
            end
            delta(numC, i) = derivSigmoidal1(sumas(numC, i))*factor;
        end 
    end
   
    %% actualizacion de  pesos y umbrales de capa final
    for i=1:n(C) %% recorrer las neuronas de la ultima capa
        for j=1:n(C-1) % capa penultima
            w(C-1, j,i)=w(C-1, j,i)+(alpha*delta(C, i)*a(C-1, i));
        end
        u(C,i)=u(C,i)+(alpha*delta(C,i));
    end 
    
    %% actualizacion de  pesos y umbrales de capas ocultas
    for numC=(C-1):-1:2 %% de la capa penultima a la 2da
        for i=1:n(numC) %% cada neurna de las capas ocultas
            for j=1:n(numC-1)
                w(numC-1,j,i)=w(numC-1,j,i)+(alpha*delta(numC, i)*a(numC-1, j));
            end
            u(numC,i)=u(numC,i)+(alpha*delta(numC,i));
        end
    end
    wAct=w;
    uAct=u;
end

