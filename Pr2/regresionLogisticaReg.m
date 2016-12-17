function [cost] = regresionLogisticaReg(lambda)
 X = load("ex2data2.txt");
 y = X(:,3); # vector con los aciertos y los fallos
 X = [X(:,1),X(:,2)]; # dejo X con solo los puntos 
 X = mapFeature(X(:,1), X(:,2));
 theta(1:columns(X)) = 0; # vector de parametros theta inicializado a 0
 
 theta = theta';
 
 opciones = optimset('GradObj', 'on', 'MaxIter', 400);
 [theta, cost] = fminunc(@(t) (costeReg(t, X, y, lambda)), theta, opciones);
 
 plotDecisionBoundary(theta, X, y);
 
endfunction
