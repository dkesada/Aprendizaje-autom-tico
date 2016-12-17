function [] = regresionLinealReg(lambda)
 
 load('ex5data1.mat');
 Theta_ini = [1;1];
 
 opciones = optimset('GradObj', 'on', 'MaxIter', 150);
 [Theta, cost] = fmincg(@(t) (costeReg(t, X, y, lambda)), Theta_ini, opciones);
 
 plot(X,y,'.r');
 hold on;
 fun = @(x) (Theta(1) + Theta(2) .* x);
 fplot(fun, [-50, 40]);
 hold off;
 
endfunction
