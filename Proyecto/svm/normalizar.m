function [X_norm] = normalizar(X, mu, sigma)
 
 X_norm = bsxfun(@minus, X, mu);
 X_norm = bsxfun(@rdivide, X_norm, sigma);
 
endfunction
