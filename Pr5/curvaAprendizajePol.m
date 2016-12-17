function [errorEntr, errorVal] = curvaAprendizajePol(lambda)
 errorEntr = [];
 errorVal = [];
 load('ex5data1.mat');
 p = 8;
 Theta_ini = zeros(1,p+1)';
 X2 = cuadrados(X,p);
 Xval = cuadrados(Xval,p);
 
 [X2, mu, sigma] = featureNormalize(X2);
 Xval = normalizar(Xval, mu, sigma);
 
 
 opciones = optimset('GradObj', 'on', 'MaxIter', 150);
 
 for i = 1:rows(X2)
  conjX = X2(1:i,:);
  conjy = y(1:i);
  [Theta, cost] = fmincg(@(t) (costeReg(t, conjX, conjy, lambda)), Theta_ini, opciones);
  errorEntr(i) = error(Theta, conjX, conjy);
  errorVal(i) = error(Theta, Xval, yval); 
 endfor
 
 plot(errorEntr);
 hold on;
 plot(errorVal, 'g');
 hold off;
 xlabel("Numeros de ejemplos de entrenamiento");
 ylabel("Error");
 legend("Entrada","Validacion")
 
endfunction
