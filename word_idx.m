function retval = word_idx (distinct_wds)
    %am declarat o structura de tip map goala si am adaugat indicii in ea cat
    %timp parcurgeam fiecare label

    retval = containers.Map;
    for i = 1 : numel(distinct_wds)
      retval(distinct_wds{i}) = i;
    endfor

endfunction
