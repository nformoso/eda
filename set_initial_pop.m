#############################################################
# Estimation of Distribution Algorithm (EDA)                #
# (Octave implementation)                                   #
#                                                           #
# Filename: set_initial_pop.m                               #
#                                                           #
# Description:                                              #
#   This function sets an initial random population that    #
#   consists in 'row_num' vectors, generated with the       #
#   function 'randi'; They have 'cols_num' random values,   #
#   between 1 and 'max_ascii_num'                           #
#                                                           #
# Input variables                                           #
# - row_num       | The number of solutions of the          #
#                 | initial population.                     #
#                                                           #
# - col_num       |  The number of elements of each         #
#                 |  solution.                              #
#                                                           #
# Output variables                                          #
# - initial_pop   | A random initial population.            #
#                                                           #
# Internal variables                                        #
# - max_ascii_num | The maximum character (in decimal ascii #
#                 | code), that could be represented.       #
#                                                           #
# Author: Nico Formoso (nicolasformoso@gmail.com)           #
#############################################################
function [ initial_pop ] = set_initial_pop(row_num, cols_num)

  max_ascii_num = 165;
  initial_pop = zeros(row_num,cols_num);

  for i = 1:row_num
    initial_pop(i,:) = randi(max_ascii_num, 1, cols_num);
  endfor

endfunction
