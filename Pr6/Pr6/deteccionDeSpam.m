function [X,y,Xval,yval,model] = deteccionDeSpam()
 
 cantidades = [200,50,50];
 cantidadesVal = [200,50,50];
 [X,y,Xval,yval] = procesarDatosDeEntrada(cantidades, cantidadesVal);
 [C,sigma] = eleccionCSigma(X, y, Xval, yval);
 C
 sigma
 model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
 pred = sum(svmPredict(model, Xval) == yval) # Numero de mensajes predichos correctamente
 
endfunction
