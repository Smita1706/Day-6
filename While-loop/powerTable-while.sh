#!/bin/bash -x
read -p "enter the no : " a;
base=2;
res=1
while [ $res -lt 256 ]
do
   res=$(($res*$base))
  echo $res;
done

#for (( i=1 ; i<=a ; i++ ))
#do
#     res=$(($res*$base));
#   echo $res; 
#done

