function [t0,t1] = descensoGrad(num_it,a)
 tic
 mat = load("ex1data1.txt");
 mat_aux = mat;
 t0 = 1;
 t1 = 1;
 temp0 = t0;
 temp1 = t1;
 sumatorioX = 0;
 sumatorioY = 0;
 co = [num_it];
 m = rows(mat); # Numero de puntos
 
 for i = 1:num_it
 
  mat_aux(:,1) = lineal(t0,t1,mat_aux(:,1)); # h0(xi) para todos los x
  mat_aux(:,1) = mat_aux(:,1) - mat_aux(:,2); # h0(xi) - yi
  sumatorioX = sum(mat_aux(:,1)); # sumatorio
  mat_aux(:,1) = mat_aux(:,1) .* mat(:,1); # (h0(xi) - yi) * xi
  sumatorioY = sum(mat_aux(:,1)); # sumatorio  
  temp0 = t0 - (a ./ m) .* sumatorioX;
  temp1 = t1 - (a ./ m) .* sumatorioY;
  t0 = temp0;
  t1 = temp1;
  mat_aux = mat;
  
  co(i) = coste(t0, t1, mat, m);
  pause()
 endfor
 toc
 #plot(co)
 #plot(mat(:,1), mat(:,2), '.r');
 #hold on;
 #fun = @(x) (t0 + t1 .* x);
 #fplot(fun, [0, 25]);
 #hold off;
 
endfunction
