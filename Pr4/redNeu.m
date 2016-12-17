function [Theta1, Theta2, X, y] = redNeu(lambda)

 load('ex4data1.mat');
 #load('ex4weights.mat');
 #Theta1 = zeros(25,401); # Theta inicializadas a 0
 #Theta2 = zeros(10,26);
 Theta1 = pesosAleatorios(401,25); # Theta inicializadas aleatoriamente
 Theta2 = pesosAleatorios(26,10);
 thetaVec = [Theta1(:); Theta2(:)];
 
 y2 = [];
 
 for i = 1:rows(y)
  aux = zeros(1, 10);
  aux(y(i)) = 1;
  y2 = [y2;aux];
 endfor
 #costeRN(thetaVec, 400, 25, 10, X, y2, 1);
 
 num_entradas = columns(X);
 num_ocultas = rows(Theta1);
 num_etiquetas = rows(Theta2);
 
 options = optimset('GradObj', 'on', 'MaxIter', 10);
 aux = fmincg(@(t) (costeRN(t, num_entradas, num_ocultas, num_etiquetas, X, y2, lambda)) , thetaVec, options);
 Theta1 = reshape(aux (1: num_ocultas * (num_entradas + 1)) , num_ocultas , (num_entradas + 1)); 
 Theta2 = reshape(aux ((1 + (num_ocultas * (num_entradas + 1))) : end),num_etiquetas , (num_ocultas + 1));

 reconocedorRedNeu(X, y, Theta1, Theta2)
 
endfunction
