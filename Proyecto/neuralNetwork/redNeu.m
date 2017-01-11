function [Theta1, Theta2, X, y] = redNeu(lambda)

 load("data.mat");
 warning("off");
 Theta1 = pesosAleatorios(columns(X)+1,25); # Theta inicializadas aleatoriamente
 Theta2 = pesosAleatorios(26,1);
 thetaVec = [Theta1(:); Theta2(:)];
 
 
 num_entradas = columns(X);
 num_ocultas = rows(Theta1);
 num_etiquetas = rows(Theta2);
 
 options = optimset('GradObj', 'on', 'MaxIter', 10);
 aux = fmincg(@(t) (costeRN(t, num_entradas, num_ocultas, num_etiquetas, X, y, lambda)) , thetaVec, options);
 Theta1 = reshape(aux (1: num_ocultas * (num_entradas + 1)) , num_ocultas , (num_entradas + 1)); 
 Theta2 = reshape(aux ((1 + (num_ocultas * (num_entradas + 1))) : end),num_etiquetas , (num_ocultas + 1));

 reconocedorRedNeu(Xval, yval, Theta1, Theta2);
 warning("on");
endfunction
