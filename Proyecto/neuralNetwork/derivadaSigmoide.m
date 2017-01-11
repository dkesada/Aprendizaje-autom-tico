function [res] = derivadaSigmoide(x)
 res = sigmoide(x) .* (1 - sigmoide(x));
endfunction
