#!/bin/bash
# Given two integers, X and Y, identify whether:
# X is less than Y
# X is greater than Y
# X is equal to Y 

read x
read y
 
if [ $x -eq $y ];
then
    echo "X is equal to Y"
fi
 
if [ $x -gt $y ];
then
    echo "X is greater than Y"
fi
 
if [ $x -lt $y ];
then
    echo "X is less than Y"
fi
