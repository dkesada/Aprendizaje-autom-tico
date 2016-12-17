function [] = reconocedorRedNeu()
 
 load('ex3data1.mat'); % X 5000 x 400, y 5000 x 1
 load('ex3weights.mat'); % Theta1 25 x 401, Theta2 10 x 26
 
 aux(1:rows(X)) = 1;
 X = [aux;X']';

 a = sigmoide(Theta1 * X');
 
 aux = [];
 aux(1:columns(a)) = 1;
 a = [aux;a];
 
 
 res = sigmoide(Theta2 * a);
 correctos = porcentajeCorrectos(res, y)
 
endfunction
