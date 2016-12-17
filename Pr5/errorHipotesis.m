function [errorEntr, errorVal] = errorHipotesis(X,y,Xtest,ytest, lambda)
 
 p = 8;
 X = cuadrados(X,p);
 Xtest = cuadrados(Xtest,p);
 Theta_ini = ones(1,p+1)';
 
 [X, mu, sigma] = featureNormalize(X);
 Xtest = normalizar(Xtest, mu, sigma);
 
 opciones = optimset('GradObj', 'on', 'MaxIter', 150);
 [Theta, cost] = fmincg(@(t) (costeReg(t, X, y, lambda)), Theta_ini, opciones);
 
 errorEntr = error(Theta, X, y);
 errorVal = error(Theta, Xtest, ytest);
 
endfunction
