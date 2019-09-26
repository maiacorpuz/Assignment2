#!/usr/bin/bash
read -p "Enter first number: " num1
read -p "Enter second number: " num2
sum=$(( $num1 + $num2 ))
sum=$sum
echo $sum
b=20
b=$b
  if [ "$sum" -gt "$b" ];
then
   sum=$(( $num1 * $num2 ));
echo "${sum}sum";
  else
   sum=$(( $num1 + $num2 ))
echo "${sum}sum";
  fi
