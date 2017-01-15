function [theta] = oneVsAll(X, y, Xval, yval, lambda)
 %ONEVSALL entrena un clasificador por regresión logística y devuelve
 % el resultado en una matriz theta
 tic
 warning("off");
 
 # Eliminar fnlwtg
 #X = [X(:,1:2),X(:,4:13)];
 #Xval = [Xval(:,1:2),Xval(:,4:13)];
 
 # Crear atributos
 #X = cuadrados(X,2);
 #Xval = cuadrados(Xval,2);
 
 # Normalizacion
 [X,mu,sigma] = featureNormalize(X);
 Xval = normalizar(Xval, mu, sigma);
 
 aux(1:rows(X)) = 1; # primera columna de unos
 X = [aux;X']'; # traspongo x y anado la columna de unos
 aux = [];
 aux(1:rows(Xval)) = 1;
 Xval = [aux;Xval']';
 
 
 initial_theta = zeros (columns(X), 1);
 
 options = optimset('GradObj', 'on', 'MaxIter', 200);
 
 theta = fmincg(@(t) (lrCostFunction(t, X, y, lambda)) , initial_theta , options);
 
 h = sigmoide(Xval * theta);
 correctos = porcentajeCorrectos(h, yval)
 warning("on");
 toc
endfunction
