# mus   E R^col_num
# sigma E R^col_num
function [ population ] = gen_population( mus, sigmas, row_num, col_num )

  for i = 1:col_num
    population(:, i) = round( normrnd(mus(i), sigmas(i), [row_num 1]) );
  endfor

endfunction
