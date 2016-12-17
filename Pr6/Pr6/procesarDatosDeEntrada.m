function [X,y,Xval,yval] = procesarDatosDeEntrada(cantidades, cantidadesVal)
 tic
 
 vocab = transformar(getVocabList());
 directorios = {"easy_ham","hard_ham","spam"}; # Los strings funcionan mal con arrays normales, con arrays de celdas van bien
 X = [];
 y = [];
 Xval = [];
 yval = [];
 
 for i = 1:3
  X = [X ; leerMails(directorios{i}, 1, cantidades(i), vocab)]; # Cada mail como vector de 0's y 1's es una fila de la matriz
  Xval = [Xval ; leerMails(directorios{i}, cantidades(i) + 1, cantidades(i) + cantidadesVal(i), vocab)];
  if i == 3
   y = [y,ones(1,cantidades(i))];
   yval = [yval,ones(1,cantidadesVal(i))];
  else
   y = [y,zeros(1,cantidades(i))];
   yval = [yval,zeros(1,cantidadesVal(i))];
  endif
 endfor
 
 y = y';
 yval = yval';
 
 toc
endfunction
