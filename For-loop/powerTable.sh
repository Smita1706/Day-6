#!/bin/bash
read -p  "Enter the number:" n
base=2;
power=1;
for (( i=1; i<=n; i++ ))
do
    power=$(($power*$base))

done
echo $power
