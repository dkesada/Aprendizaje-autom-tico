function [] = seleccionDeLambda()

 load('ex5data1.mat');
 errorEntr = [];
 errorVal = [];
 lambda = [0,0.001,0.003,0.01,0.03,0.1,0.3,1,3,10];
 
 for i = 1:length(lambda)
  [errorEntr(i), errorVal(i)] = errorHipotesis(X,y,Xval,yval, lambda(i));
 endfor
 
 plot(lambda, errorEntr);
 hold on;
 plot(lambda, errorVal, 'g');
 hold off;
 xlabel("lambda");
 ylabel("Error");
 legend("Entrada","Validacion")
 
endfunction
