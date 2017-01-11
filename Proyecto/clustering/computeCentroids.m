function centroids = computeCentroids(X, idx, K)

 num = zeros(K,1) .+ 1e-9; # Necesito que no sea estrictamente 0 para que no de un NaN al dividir si un centroide no tiene ningun punto
 centroids = zeros(K, columns(X));
 
 for i = 1:rows(X)
 
  centroids(idx(i),:) = centroids(idx(i),:) + X(i,:);
  num(idx(i)) = num(idx(i)) + 1;
 
 endfor
 
 centroids = centroids ./ num; # Para poder dividir cada fila por su numero de centroides acumulado hace falta que num sea un vector columna

endfunction
