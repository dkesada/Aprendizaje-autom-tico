# Elevo al cuadrado el sumatorio y divido por 2 m

function [res] = coste(t0, t1, mat, m)
 mat_aux = mat;
 mat_aux(:,1) = lineal(t0,t1,mat_aux(:,1)); # h0(xi) para todos los x
 mat_aux(:,1) = mat_aux(:,1) - mat_aux(:,2); # h0(xi) - yi
 mat_aux(:,1) = mat_aux(:,1) .^ 2;
 sumatorioX = sum(mat_aux(:,1)); # sumatorio
 res = sumatorioX ./ (2 .* m);
endfunction
