function [J, grad] = costeRN (params_rn, num_entradas, num_ocultas, num_etiquetas, X, y, lambda)
% costeRN calcula e l coste y e l gradiente de una red neuronal de dos capas
 
 Theta1 = reshape(params_rn (1: num_ocultas * (num_entradas + 1)) , num_ocultas , (num_entradas + 1)); 
 Theta2 = reshape(params_rn ((1 + (num_ocultas * (num_entradas + 1))) : end),num_etiquetas , (num_ocultas + 1));

 aux(1:rows(X)) = 1; # Columna de 1's en X
 X = [aux;X']';
 m = rows(X);
 z2 = Theta1 * X';
 a = sigmoide(z2);
 
 aux = [];
 aux(1:columns(a)) = 1;
 a = [aux;a];
 z2 = [aux;z2];
 h = sigmoide(Theta2 * a);
 J = (-y' .* log(h) - (1 - y') .* log(1 - h));
 J = sum(sum(J ./ m));
 J = J + (lambda / (2 * m)) * (sum(sum(Theta1(:,2:columns(Theta1)) .^ 2)) + sum(sum(Theta2(:, 2:columns(Theta2)) .^ 2)));
 
 a1 = X;
 a2 = a;
 a3 = h';
 
 d3 = (a3 - y);
 d2 = Theta2' * d3' .* derivadaSigmoide(z2);
 d2 = d2(2:rows(d2), :); # elimino delta2 sub 0
 
 Theta1(:, 1) = 0; # Modifico la primera columna de las matrices de theta para la regularizacion
 Theta2(:, 1) = 0;
 
 acu1 = d2 * a1 ./ m + (lambda / m) .* Theta1;
 acu2 = d3' * a2' ./ m + (lambda / m) .* Theta2;
 
 grad = [acu1(:) ; acu2(:)];
 
 
endfunction
