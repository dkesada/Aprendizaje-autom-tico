function [res] = potencias(X,p)
 
 a = X;
 res = X;
 for i = 2:p
  res = [res, a .^ i];
 endfor

endfunction
