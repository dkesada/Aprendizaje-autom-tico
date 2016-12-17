function [bestC,bestSigma] = eleccionCSigma(X, y, Xval, yval);
 C = 0.01;
 sigma = 0.01;
 bestPred = 0;
 
 for i = 1:8
  for j = 1:8
   model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
   pred = sum(svmPredict(model, Xval) == yval);
   
   if(pred > bestPred) # Si el modelo con este C y sigma predice mejor
    bestC = C;
    bestSigma = sigma;
    bestPred = pred;
   endif
   
   sigma = sigma * 3;
   
  endfor
  
  sigma = 0.01;
  C = C * 3;
  
 endfor
 
endfunction
