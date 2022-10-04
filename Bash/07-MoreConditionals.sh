#!/bin/bash
# Given three integers representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.
# If all three sides are equal, output EQUILATERAL.
# Otherwise, if any two sides are equal, output ISOSCELES.
# Otherwise, output SCALENE.

read x
read y
read z

if [ $x -eq $y ] && [ $y -eq $z ];
then
    echo EQUILATERAL
elif [ $x -eq $y ];
then
    echo ISOSCELES
elif [ $x -eq $z ];
then
    echo ISOSCELES
elif [ $y -eq $z ];
then
    echo ISOSCELES
else
    echo SCALENE
fi
