function [errorEntr, errorVal] = curvaAprendizaje(lambda)
 errorEntr = [];
 errorVal = [];
 load('ex5data1.mat');
 Theta_ini = [1;1];
 
 opciones = optimset('GradObj', 'on', 'MaxIter', 150);
 
 for i = 1:rows(X)
  conjX = X(1:i,:);
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
