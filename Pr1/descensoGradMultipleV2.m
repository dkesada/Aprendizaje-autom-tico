function [j] = descensoGradMultipleV2()
  tic
  x = load("ex1data2.txt");
  col = columns(x);
  m = rows(x); # Numero de puntos
  
  y = (x(:,col))'; # y es la ultima columna de mat
  x = x(:, 1:(col-1)); # quito y de la matriz
  aux(1:m) = 1; # primera columna de unos
  x = [aux;x']'; # traspongo x y anado la columna de unos
  
  j = pinv(x'*x)*x'*y';
  toc
endfunction
