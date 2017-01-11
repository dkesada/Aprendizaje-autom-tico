function [res] = porcentajeCorrectos(h, y)
 h = h >= 0.5; # Pongo a 1 los casos en los que h(i) >= 0.5, a 0 el resto
 res = sum(y == h) * 100/ length(y) ; # Calculo el porcentaje de clasificados correctamente
endfunction
