function [cost] = regresionLogistica()
 X = load("ex2data1.txt");
 y = X(:,3); # vector con los aciertos y los fallos
 theta(1:columns(X)) = 0; # vector de parametros theta inicializado a 0
 X = [X(:,1),X(:,2)]; # dejo X con solo los puntos 
 aux(1:rows(X)) = 1; # primera columna de unos
 X = [aux;X']'; # traspongo x y anado la columna de unos
 
 opciones = optimset('GradObj', 'on', 'MaxIter', 400);
 [theta, cost] = fminunc(@(t) (coste(t, X, y)), theta, opciones);
 
 plotDecisionBoundary(theta, X, y);
 p = porcentajeCorrectos(theta, X, y);
 printf("Se ha clasificado correctamente un %d porciento de los casos.\n", p)
 
endfunction
