function [] = visualiza(n)
 if n == 1
  mat = load("ex2data1.txt");
  xlabel("nota examen 1", "fontsize", 12);
  ylabel("nota examen 2", "fontsize", 12);
 else
  mat = load("ex2data2.txt");
  xlabel("microchip test 1", "fontsize", 12);
  ylabel("microchip test 2", "fontsize", 12);
 endif
 
 negativos = find(mat(:,3)==0);
 plot(mat(:,1), mat(:,2), '.r');
 hold on;
 plot(mat(negativos,1), mat(negativos,2), 'ko', 'MarkerFacecolor', 'y', 'MarkerSize', 7);
 hold off;
 
 if n == 1
  legend("aceptado", "no aceptado");
 else
  legend("y == 1", "y == 0");
 endif
 
endfunction
