function W = pesosAleatorios(L_in, L_out)
 ini = sqrt(6) ./ sqrt(L_in + L_out);
 W = -ini + (2 * ini) .* rand(L_out, L_in);
endfunction
