function [ initial_pop ] = set_initial_pop(row_num, cols_num)

  max_ascii_num = 165;
  initial_pop = zeros(row_num,cols_num);

  for i = 1:row_num
    initial_pop(i,:) = randi(max_ascii_num, 1, cols_num);
  endfor

endfunction
