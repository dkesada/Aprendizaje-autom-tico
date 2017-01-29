function [res, bestLambda] = checkBestLambda()
 lambda = [0.01,0.03,0.1,0.3,1,3,10];
 res = [];
 bestLambda = 1;
 bestRes = 0;
 
 for i = 1:length(lambda)
 
  res(i) = redNeu(lambda(i));
  
  if (res(i) > bestRes)
   bestLambda = i;
  endif
 
 endfor
 
endfunction
