function [ result ] = squared_dist( tested_sol )
  global solution;
  result = 1 / ( 1 + sum( (solution - tested_sol).^2 ) );
endfunction
