function [res] = transformar(celdas)
 # Transforma un array de celdas en una estructura
 
 for i = 1:length(celdas)
  res.(celdas{i}) = i;
 endfor
 
endfunction
