# Assignment2
vim understanding_quotes.sh
#!/usr/bin/bash
echo $USER
VARIABLE="I am on $USER"
echo $USER # prints VARIABLE
:wq
chmod 755 understanding_quotes.sh
./understanding_quotes.sh
vim processes.sh
#!/usr/bin/bash
myvar=$( ps -ef | grep $USER)
echo $myvar
:wq
chmod 755 processes.sh
./processes.sh
vim addormultiply.sh
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
  :wq
chmod 755 addormultiply.sh
./addormultiply.sh
