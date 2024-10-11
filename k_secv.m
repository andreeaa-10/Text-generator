function B = k_secv (A, k)
  %am parcurs array-ul si am unit cate k elemente, folosind strjoin

  B = cell(numel(A) - k , 1);

  for i = 1 : numel(A) - k
   B{i} = strjoin(A(i : i + k - 1));
  endfor

endfunction
