#!/usr/bin/bash
b=0
b=$b
counter=0
while [ "$1" -le num1 ] 
do
   echo $counter
   counter=$((counter + $num2))
done

if [ -z "$2" ]; then
   counter=1
   while [ $counter -le "$num1" ]
   do
   echo $counter
   ((counter++))
elif [ $counter -gt $num1 ]; then
   echo "Counter: $counter times reached; Exiting loop";

else
exit
done
