function [j] = costeMultiple(x, y, te, m) 
  op = (te * x - y);
  j = (op*op') ./ (2 .* m); # calculo la funcion de coste 
endfunction
