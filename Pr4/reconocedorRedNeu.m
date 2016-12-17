function [correctos] = reconocedorRedNeu(X, y, Theta1, Theta2)
 
 aux(1:rows(X)) = 1;
 X = [aux;X']';

 a = sigmoide(Theta1 * X');
 
 aux = [];
 aux(1:columns(a)) = 1;
 a = [aux;a];
 
 
 res = sigmoide(Theta2 * a);
 correctos = porcentajeCorrectos(res, y);
 
endfunction
