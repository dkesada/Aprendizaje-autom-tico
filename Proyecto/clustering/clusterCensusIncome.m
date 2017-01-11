function [centroids, idx] = clusterCensusIncome(fileName)
 
 load(fileName);
 
 [centroids,idx] = runkMeans(X, randCentroides(X,2), 10, false);
 
endfunction
