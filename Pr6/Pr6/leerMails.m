function [res] = leerMails(dir, ini, fin, vocab)
 res = [];
 for i = ini:fin
  file_name = sprintf("%s/%04d.txt", dir, i);
  mail = processEmail(readFile(file_name));
  res = [res ; procesarString(mail, vocab)]; # Cada mail es transformado a un vector de 0's y 1's
 endfor
endfunction
