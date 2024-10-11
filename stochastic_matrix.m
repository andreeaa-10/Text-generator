function retval = stochastic_matrix(k_secv_corpus, corpus_words, words_set, k_secv_set, k)
    %am declarat matricea stocastica, am parcurs k_secv_corpus si am extras k-secventa
    %de la indicele j
    %conform enuntului, label-ul corespunzator k-secventei j se afla in corpus la j + k, deci
    %l-am extras si pe acela
    %am determinat indicii pentru k-secventa si cuvantul pe care i-am selectat anterior
    %am actualizat matricea stocastica

    retval = sparse(length(k_secv_set), length(words_set));

    for j = 1 : length(k_secv_corpus)
      k_secv = k_secv_corpus{j};
      next_word = corpus_words{j + k};

      k_secv_idx = 0;
      for i = 1:length(k_secv_set)
        if isequal(k_secv, k_secv_set{i})
          k_secv_idx = i;
          break;
        endif
      endfor

      word_idx = 0;
      for l = 1:length(words_set)
        if strcmp(next_word, words_set{l})
          word_idx = l;
          break;
        endif
      endfor

    retval(k_secv_idx, word_idx)++;
    endfor

endfunction
