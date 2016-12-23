function res = comprimirColores(centroids, idx)
 res = [];
 
 for i = 1:length(idx)
  res = [res;centroids(idx(i),:)];
 endfor
 
endfunction
