function [res] = porcentajeCorrectos(h, y)
 [val, pos] = max(h); # El maximo de los reconocedores sera el numero que predice
 comp = y' == pos;
 res = sum(comp) / columns(comp) * 100; # Calculo el porcentaje de clasificados correctamente
endfunction
