function [correctos] = redNeu(lambda)

 load("data.mat");
 warning("off");
 
 # Eliminar fnlwtg
 #X = [X(:,1:2),X(:,4:13)];
 #Xval = [Xval(:,1:2),Xval(:,4:13)];
 
 # Crear atributos
 #X = potencias(X,2);
 #Xval = potencias(Xval,2);
 
 Theta1 = pesosAleatorios(columns(X)+1,25); # Theta inicializadas aleatoriamente
 Theta2 = pesosAleatorios(26,1);
 thetaVec = [Theta1(:); Theta2(:)];
 
 # Normalizacion
 [X,mu,sigma] = featureNormalize(X);
 Xval = normalizar(Xval, mu, sigma);
 
 num_entradas = columns(X);
 num_ocultas = rows(Theta1);
 num_etiquetas = rows(Theta2);
 
 options = optimset('GradObj', 'on', 'MaxIter', 3000);
 aux = fmincg(@(t) (costeRN(t, num_entradas, num_ocultas, num_etiquetas, X, y, lambda)) , thetaVec, options);
 Theta1 = reshape(aux (1: num_ocultas * (num_entradas + 1)) , num_ocultas , (num_entradas + 1)); 
 Theta2 = reshape(aux ((1 + (num_ocultas * (num_entradas + 1))) : end),num_etiquetas , (num_ocultas + 1));

 correctos = reconocedorRedNeu(Xval, yval, Theta1, Theta2);
 warning("on");
endfunction
