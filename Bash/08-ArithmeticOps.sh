#!/bin/bash
# A mathematical expression containing +,-,*,^, / and parenthesis will be provided. Read in the expression, then evaluate it. Display the result rounded to 3 decimal places. 
#
# Sample Inputs
# 5+50*3/20 + (19*2)/7
# -105+50*3/20 + (19^2)/7
# (-105.5*7+50*3)/20 + (19^2)/7
#
# Sample Output
# 17.929
# -45.929
# 22.146
###################################
# My first attempt was echo $((calc)) but realized it won't work because Bash arithmetic expansion does not support floating-point arithmetic.
# My second attempt used bc but bc does not round, it just chops it off if you use the 'scale' option
# My third and final attempt after reading discussions, I used xargs and printf
###################################

read calc
echo $calc | bc -l | xargs printf "%.3f"

# TIL bc stands for bash calculator
# xargs is like another pipe, I think this is needed for printf
# bc -l does the calculation to 20 decimals and printf somehow rounds it to 3 decimals. I learned that the 'f' in %.3f means "to 3 decimals' floating point which makes sense.
