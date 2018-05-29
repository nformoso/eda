#############################################################
# Estimation of Distribution Algorithm (EDA)                #
# (Octave implementation)                                   #
#                                                           #
# Filename: gen_population.m                                #
#                                                           #
# Description:                                              #
#   This function generates a new population (a set of      #
#   solutions). In this case, we generate a set of random   #
#   numbers normally distributed  BY VARIABLE, using the    #
#   mean and the standard deviation of each of those.       #
#                                                           #
# Input variables                                           #
# - mus           | A row vector containing the means of    #
#                 | each variable. Its size is (1, col_num) #
#                                                           #
# - sigmas        | A row vector containing the standard    #
#                 | deviation of each variable. Its size is #
#                 | (1, col_num)                            #
#                                                           #
# - row_num       | The number of solutions of the          #
#                 | initial population.                     #
#                                                           #
# - col_num       |  The number of elements of each         #
#                 |  solution.                              #
#                                                           #
# Output variables                                          #
# - population    | A random normally distributed (by       # 
#                 | variable) population.                   #
#                                                           #
# Author: Nico Formoso (nicolasformoso@gmail.com)           #
#############################################################
function [ population ] = gen_population( mus, sigmas, row_num, col_num )

  for i = 1:col_num
    population(:, i) = round( normrnd(mus(i), sigmas(i), [row_num 1]) );
  endfor

endfunction
