#############################################################
#        Estimation of Distribution Algorithm (EDA)         #
#                 (Octave implementation)                   #
#                                                           #
# Filename: main.m                                          #
#                                                           #
# Description:                                              #
#   This EDA implementation was developed for               #
#   study purposes. You can try different parameters and    #
#   a different evaluation function.                        #
#                                                           #
# Variable description:                                     #
# - input_sol   | Contains the string that the algorithm    #
#               | should guess. It's entered by command     #
#               | line.                                     #
#                                                           #
# - sol_length  |  This is the length of the solution.      #
#                                                           #
# - sol_number  | The number of solution that the initial   #
#               | population will have.                     #
#                                                           #
# - k           | The number of best solutions, that the    #
#               | algorithm will take on each iteration     #
#                                                           #
# - req_std_dev | The required Standard Deviation for       #
#               | EDA.                                      #
#                                                           #
# - f_eval      | The evaluation function                   #
#                                                           #
# NOTES:                                                    #
#   1- Due to some renderization problems, the function     #
#      'text' could throw a warning during execution.       #
#                                                           #
#   2- Due to some octave limitations (or maybe my          #
#      knowing limitations), rendering long text may        #
#      produce problems with output text visualization.     #
#                                                           #
# Author: Nico Formoso (nicolasformoso@gmail.com)           #
#############################################################

#
# Cleaning preexistent data
#
clear;
clc;

#
# Variables
#

input_sol = input(['Type a string (not longer than 15 chars.) - ' ...
  '(default: "Hello EDA world!"): '], "s");

# Checking / Setting input data
if ( strcmp(input_sol,"") == 1 )
  global solution = toascii("Hello EDA world!");
else
  global solution = toascii(input_sol);
endif

sol_length = length(solution);

## Changeable
sol_number = 200;

# sol_elite  = 0; # Elite not implemented

## Percent changeable
## (k should always be a percent of the number of solutions)
k = sol_number * 0.1;

## Requested standard deviation
req_std_dev = 0.1;

#
# Evaluation function
# You may write your own evaluation function
#
f_eval = @squared_dist;

#
# Setting Initial Population
#
initial_pop = set_initial_pop(sol_number, sol_length);

#
# Running Estimation of distribution algorithm
#
[ best_solutions ]= eda(initial_pop, k, req_std_dev, f_eval);

#
# Drawing results
#
draw_eda( best_solutions );
