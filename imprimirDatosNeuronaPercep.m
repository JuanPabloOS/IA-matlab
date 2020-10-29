%% Imprimir los datos de entrada, salida y pesos de una neuronaMcCullochPits
%% Entradas
%% x vector de entradas
%% w vector de pesos
%% yd vector de salidas esperada
%% y vector de salidas calculadas

function [] = imprimirDatosNeuronaPercep(x,w,yd,y)
  
  numPatrones = size(x,1);
  numEntradas = size(x,2);
  epsilon = 0.00001;
  
  fprintf('------------------------------------- \n');
  fprintf('Neurona Perceptron \n');
  fprintf('------------------------------------- \n');
  fprintf('\nPesos');
  for i=1:numEntradas
    fprintf(' w%1d = %5.2f ', i, w(i));
  end
  fprintf('w0 = %5.2f', w(numEntradas+1));
  fprintf('\n');
  
  fprintf('Patron ');
  for i=1:numEntradas
    fprintf(' x%1d ', i);
  end
  fprintf('   yd     yc\n');
  fprintf('------------------------------------- \n');
  numOk = 0;
  for i=1:numPatrones
    fprintf('%4d.-',i);
      for j=1:numEntradas
        fprintf('%2d ', x(i,j));
      end
      if(abs(yd(i)-y(i))<epsilon)
        fprintf('%5.2f    %5.2f\n', yd(i),y(i));
        numOk=numOk+1;
      else
        fprintf('%5.2f    %5.2f*\n', yd(i),y(i));
      end
  end  
  fprintf('Exactitud: %5.2f %%\n\n', (numOk/numPatrones)*100);
endfunction
