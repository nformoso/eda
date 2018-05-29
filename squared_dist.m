#############################################################
# Estimation of Distribution Algorithm (EDA)                #
# (Octave implementation)                                   #
#                                                           #
# Filename: squared_dist.m                                  #
#                                                           #
# Description:                                              #
#   This function analyze a solution (one at a time) of the #
#   population, checkig how far is it from the real         #
#   solution. Both (real and tested) solutions were         #
#   converted into an array where each element is the       #
#   decimal ascii code of the corresponding character.      #
#   There are multiple ways to check this, my choice was    #
#   the inverse of the squared distance plus one.           #
#   The 'plus one' ensures that this will never be a        #
#   division by zero.                                       #
#                                                           #
# Input variables                                           #
# - testing_sol   | A row vector where each element         #
#                 | represents a character of the testing   #
#                 | solution.                               #
#                                                           #
# Internal variables                                        #
# - solution      | This is the solution row vector,        #
#                 | globally declared into main.m.          #
#                                                           #
# Output variables                                          #
# - result        | A number, that is, a score of the       #
#                 | solution.                               #
#                                                           #
# Author: Nico Formoso (nicolasformoso@gmail.com)           #
#############################################################
function [ result ] = squared_dist( tested_sol )
  global solution;
  result = 1 / ( 1 + sum( (solution - tested_sol).^2 ) );
endfunction
