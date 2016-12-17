function [J, grad] = costeReg(Theta, X, y, lambda)
 
 m = rows(X);
 aux = ones(m,1);
 X = [aux,X];
 h = Theta' * X';
 
 J = (1 / (2 * m)) * sum((h'-y).^2);
 J = J + (lambda/(2*m)) * sum(Theta(2:rows(Theta)) .^ 2);
 grad = ((h' - y)' * X) / m;
 grad(2:columns(grad)) = grad(2:columns(grad)) + (lambda / m) * Theta(2:rows(Theta))';
 
 grad = grad';
endfunction
