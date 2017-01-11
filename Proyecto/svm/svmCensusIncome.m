function [] = svmCensusIncome(filename)
 tic
 load(filename);
 [X,mu,sigma] = featureNormalize(X);
 Xval = normalizar(Xval, mu, sigma);
 #[C,sigma] = eleccionCSigma(X, y, Xval, yval);
 #C = 1;
 #sigma = 0.3;
 #model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
 model = svmTrain(X, y, 1, @linearKernel, 1e-3, 20);
 pred = sum(svmPredict(model, Xval) == yval) * 100 / rows(Xval) # Numero de sueldos predichos correctamente
 toc
endfunction
