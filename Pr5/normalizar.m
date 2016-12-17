function [res] = normalizar(X, mu, sigma)
 
 res = X;
 
 for i = 1:rows(X)
  
  res(i,:) = (res(i,:) - mu) ./ sigma;
  
 endfor
 
endfunction
