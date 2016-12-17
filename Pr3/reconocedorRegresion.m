function [theta] = reconocedorRegresion()

 load('ex3data1.mat');
 theta = oneVsAll(X, y, 10, 0.5);

endfunction
