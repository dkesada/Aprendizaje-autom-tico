function [res] = porcentajeCorrectos(theta, X, y) 
 h = sigmoide(X * theta');
 h = h >= 0.5; # Pongo a 1 los casos en los que h(i) >= 0.5, a 0 el resto
 res = rows(find(y == h)) * rows(X) / 100; # Calculo el porcentaje de clasificados correctamente
endfunction
