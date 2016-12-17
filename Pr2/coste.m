function [J, grad] = coste(theta, X, y)
 m = rows(X);
 h = sigmoide(X * theta');
 J = (-y' * log(h) - (1 - y)' * log(1 - h)) / m;
 grad = sum(((h - y) .* X)) / m;
endfunction
