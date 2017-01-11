function [X,y] = processDataSet(fileName)
 tic
 warning("off");
 
 file = readFile(fileName);
 file = prepararDataSet(file);
 X = [];
 y = [];
 aux = [];
 
 while ~isempty(file)
  [tok, file] = strtok(file, [', ']);
  
  if (strcmp(tok,'>50K') == 1)
   X = [X;aux];
   y = [y;1];
   aux = [];
  elseif (strcmp(tok,'<=50K') == 1)
   X = [X;aux];
   y = [y;0];
   aux = [];
  else
   aux = [aux,base2dec(tok,10)];
  endif
  
 endwhile
 warning("on");
 toc
endfunction
