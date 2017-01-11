function [theta] = oneVsAll(X, y, Xval, yval, lambda)
 %ONEVSALL entrena un clasificador por regresión logística y devuelve
 % el resultado en una matriz theta
 tic
 warning("off");
 aux(1:rows(X)) = 1; # primera columna de unos
 X = [aux;X']'; # traspongo x y anado la columna de unos
 aux = [];
 aux(1:rows(Xval)) = 1;
 Xval = [aux;Xval']';
 
 
 initial_theta = zeros (columns(X), 1);
 
 options = optimset('GradObj', 'on', 'MaxIter', 50);
 
 theta = fmincg(@(t) (lrCostFunction(t, X, y, lambda)) , initial_theta , options);
 
 h = sigmoide(Xval * theta);
 correctos = porcentajeCorrectos(h, yval)
 warning("on");
 toc
endfunction
