#!/bin/bash -x
read -p  "enter the no : " a
read -p "enter the no : " b

for (( counter1=a;  counter1<b; counter1++ ))
do
    result=1
   for (( counter2=2; counter2<counter1; counter2++ ))
   do
     if [ $(($counter1%$counter2))  -eq 0 ]
     then
         result=$(($result+1))
     fi
    done

     if [ $result -eq 1 ]
        then
        echo "Prime numbers between range is :$counter1"
     fi
done
