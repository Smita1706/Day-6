#!/bin/bash
number1=0;
number2=0
while [[ $number1 -lt 11 && $number2 -lt 11 ]]
do
    a=$((RANDOM%2));
    if [ $a -eq 0 ]
     then
        echo "head";
       number1=$(($number1+1));
    elif [ $a -eq 1 ]
          then 
      echo "tail";
      number2=$(($number2+1));
     fi

done
echo "number1 = $number1   number2 = $number2"
