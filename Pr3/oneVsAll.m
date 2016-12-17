function [all_theta] = oneVsAll(X, y , num_etiquetas , lambda)
 %ONEVSALL entrena varios clasificadores por regresión logística y devuelve
 % el resultado en una matriz all_theta , donde la fila iesima
 % corresponde al clasificador de la etiqueta iesima
 warning("off");
 aux(1:rows(X)) = 1; # primera columna de unos
 X = [aux;X']'; # traspongo x y anado la columna de unos
 
 initial_theta = zeros (columns(X), 1);
 
 options = optimset('GradObj', 'on', 'MaxIter', 50);
 all_theta = [];
 
 for i = 1: num_etiquetas
  
  aux = fmincg(@(t) (lrCostFunction(t, X, (y == i), lambda)) , initial_theta , options);
  all_theta = [all_theta; aux'];
 endfor
 
 h = sigmoide(X * all_theta');
 correctos = porcentajeCorrectos(h', y)
 
endfunction
