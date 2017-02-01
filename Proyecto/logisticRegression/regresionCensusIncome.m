function [theta] = regresionCensusIncome(fileName)

 load(fileName);
 lambda = [0.01,0.03,0.1,0.3,1,3,5,10];
 correctos = [];
 
 for i = 1:length(lambda)
  [theta,correctos(i)] = oneVsAll(X, y, Xval, yval, lambda(i));
 endfor

 plot(lambda,correctos);

endfunction
