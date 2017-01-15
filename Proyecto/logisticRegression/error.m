function [J] = error(Theta, X, y)
 #Funcion que calcula el error de unos valores de Theta en unos ejemplos dados
 m = rows(X);
 aux = ones(m,1);
 X = [aux,X];
 h = Theta' * X';
 
 J = (1 / (2 * m)) * sum((h'-y).^2);

endfunction
