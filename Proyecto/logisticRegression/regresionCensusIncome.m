function [theta] = regresionCensusIncome(fileName, lambda)

 load(fileName);
 theta = oneVsAll(X, y, Xval, yval, lambda);

endfunction
