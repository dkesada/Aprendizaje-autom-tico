function [res] = sigmoide(x)
 res = 1 ./ (1 .+ e .^ (- x));
endfunction
