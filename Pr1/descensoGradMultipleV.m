function [te, mu, sigma] = descensoGradMultipleV(num_it,a)
  tic
  mat = load("ex1data2.txt");
  col = columns(mat);
  [mat, mu, sigma] = normalizaAtributo(mat); # normalizo los datos
  m = rows(mat); # Numero de puntos
  
  y = (mat(:,col))'; # y es la ultima columna de mat
  mat = mat(:, 1:(col-1)); # quito y de la matriz
  aux(1:m) = 1; # primera columna de unos
  mat = [aux;mat']; # traspongo x y anado la columna de unos
  
  te(1:col) = 1; # Inicializo el vector de parametros teta
  
  j = [num_it];
  
  for i = 1:num_it
   
   res = te * mat - y; # h0(xi) - yi
   te = (te' - ((a ./ m) .* (mat * res')))'; 
   
   j(i) = costeMultiple(mat, y, te, m);
   
   #pause();
   
  endfor
  
  toc
  plot(j);
  
endfunction
