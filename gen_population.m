function [ population ] = gen_population( mu, sigma, row_num, col_num )

  for i = 1:col_num
    population(:, i) = normrnd(mu, sigma, [row_num 1]);
  endfor

endfunction
