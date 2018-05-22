function [ result ] = hamming_dist( solution, tested_sol )

  # Summatory of the number of zeros 
  # (which means that the vectos has the same character in this position)
  result = sum((solution - tested_sol)==0);

endfunction
