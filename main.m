#############################################################
# Estimation of Distribution Algorithm (EDA)                #
# (Octave implementation)                                   #
#                                                           #
# Author: Nico Formoso (nicolasformoso@gmail.com)           #
#                                                           #
# Purpose:                                                  #
#     This EDA implementation was done with study purposes. #
#                                                           #
#                                                           #
# Usage:                                                    #
#       1- Clone / Download                                 #
#       2- Open Octave                                      #
#       3- Get into decompressed/cloned directory           #
#       4- Run: main (and press enter)                      #
#                                                           #
# NOTES:                                                    #
#       1- Due to some renderization problems, the function #
#          'text' could throw a warning during execution.   #
#                                                           #
#       2- Due to some octave limitations (or maybe my      #
#          knowing limitations), rendering long text may    #
#          produce problems with output text visualization. #
#############################################################
#
# Cleaning environment
#
clear;
clc;
#
# Variables
#
input_sol = input(['Type a string (not longer than 15 chars.) - ' ...
  '(default: "Hello EDA world!"): '], "s");

if ( strcmp(input_sol,"") == 1 )
  global solution = toascii("Hello EDA world!");
else
  global solution = toascii(input_sol);
endif

sol_length = length(solution);
sol_number = 200;
sol_elite  = 0;

## k Best individuals selected
k = sol_number * 0.1;
## Requested standard deviation
req_std_dev = 0.1;
#
# Evaluation function
#
# f_eval = @hamming_dist; # bad solution
f_eval = @squared_dist;
#
# Initial Population
#
initial_pop = set_initial_pop(sol_number, sol_length);
#
# Eda
#
[ best_solutions ]= eda(initial_pop, k, req_std_dev, f_eval);
#
# Drawing
#
draw_eda( best_solutions );