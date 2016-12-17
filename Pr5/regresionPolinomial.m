function [] = regresionPolinomial()
 
 load('ex5data1.mat');
 p = 8;
 X2 = cuadrados(X,p);
 Theta_ini = ones(1,p+1)';
 
 [X2, mu, sigma] = featureNormalize(X2);
 
 
 opciones = optimset('GradObj', 'on', 'MaxIter', 150);
 [Theta, cost] = fmincg(@(t) (costeReg(t, X2, y, 0)), Theta_ini, opciones);
 
 plot(X,y, '.r');
 plotFit(min(X), max(X), mu, sigma, Theta, p);
 
endfunction
