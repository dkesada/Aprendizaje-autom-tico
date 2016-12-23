function [B] = comprimirImagen()
 A = double(imread('bird_small.png'));
 A = A / 255;
 r = rows(A);
 c = columns(A);
 B = reshape(A,r*c,3);
 
 [centroids,idx] = runkMeans(B, randCentroides(B,16), 10, false);
 
 B = reshape(comprimirColores(centroids,idx),r,c,3);
 imagesc(B)
 
endfunction
