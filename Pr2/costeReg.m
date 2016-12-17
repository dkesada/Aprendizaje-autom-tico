function [J, grad] = costeReg(theta, X, y, lambda)
 theta = theta';
 m = rows(X);
 h = sigmoide(X * theta');
 J = (-y' * log(h) - (1 - y)' * log(1 - h)) / m;
 J = J + (lambda / (2 * m)) * sum(theta .^ 2);
 grad = sum(((h - y) .* X)) / m;
 grad = grad + (lambda / m) * theta;
 grad(1) = grad(1) - (lambda / m) * theta(1);
endfunction
