%imprimir la Codificacion Pseudo Binaria

function [] = imprimirCodifPseudoBinaria(codigo)
  fprintf('---------------------------------------\n');
  fprintf('Código Pseudo Binario\n');
  fprintf('---------------------------------------\n');
  if(codigo.valIni ~= 0)
       fprintf(' valor inicial = %5.2f',codigo.valIni);
  end
  if(codigo.signo)
       fprintf(' Signo = true');
  end
  fprintf('\n');
  fprintf('Datos');
  fprintf('\n ');
  for i = 1:size(codigo.datos,2) 
      if(codigo.datos(i)==round(codigo.datos(i)))
          fprintf('%3d. %10d \n ', i, codigo.datos(i));
      else
          fprintf('%3d. %20.15d \n ', i, codigo.datos(i));
      end
  end
  suma=sum(codigo.datos)
  fprintf('Total %20.15f \n ', suma);
endfunction
