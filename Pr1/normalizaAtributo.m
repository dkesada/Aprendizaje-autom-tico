# Normalizo la matriz x y genero dos vectores, uno con medias 
# y otro con variaciones estandar

function [x_norm, mu, sigma] = normalizaAtributo(x)
 mu = median(x(:,:)); # Vector con las medias por columnas
 sigma = std(x(:,:)); # Vector con las desviaciones estandar por columnas
 x_norm = ((x' - mu') ./ sigma')'; # x_norm = (x - mu) / si
endfunction
