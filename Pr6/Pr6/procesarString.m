function [res] = procesarString(mail, vocab)
 n = 1899;  % Total number of words in the dictionary
 res = zeros(1, n); # Vector inicializado a 0, cada vez que encuentre un token que este en vocab pongo a 1 su posicion
 
 while ~isempty(mail)
  [str, mail] = strtok(mail, [' ']);
  
  if (isfield(vocab, str) == 1)
   res(vocab.(str)) = 1;
  endif
 end
 
endfunction
