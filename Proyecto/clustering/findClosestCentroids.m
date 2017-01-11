function idx = findClosestCentroids(X, centroids)
 
 idx = [];
 
 for i = 1:rows(X)
  
  mejorDist = inf; # Para cada pasada, la distancia mejor inicial es infinito
  for j = 1:rows(centroids)
   
   dist = sqrt(sum((X(i,:) - centroids(j,:)).^2)); # Distancia euclidea del punto i al centroide j
   if (dist < mejorDist)
    idx(i) = j;
    mejorDist = dist;
   endif
   
  endfor
 
 endfor
 
endfunction
