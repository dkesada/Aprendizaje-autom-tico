function [res] = cuadrados(X,p)
 
 res = X;
 for i = 2:p
  res = [res, X .* res(:,i-1)];
 endfor

endfunction
