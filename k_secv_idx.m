function retval = k_secv_idx (distinct_k_sec)
  %am facut acelasi lucru ca in cazul functiei anterioare, dar de data aceasta am
  %parcurs secvente, nu label-uri

  retval = containers.Map;
  for i = 1:numel(distinct_k_sec)
        retval(distinct_k_sec{i}) = i;
  endfor

endfunction
