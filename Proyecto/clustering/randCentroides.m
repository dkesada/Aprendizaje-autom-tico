function centroides = randCentroides(X, K)

 randidx = randperm(size(X,1));
 centroides = X(randidx(1:K),:);

endfunction
