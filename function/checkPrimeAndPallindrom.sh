read -p "enter the number : " a
function  myFun(){

 num=$1
 num2=$num
 prime=1;
 pallindrom=1
 reverse=0

#10  Check prime or not
   for (( i=2 ; i<$num2 ; i++ ))
   do
        if [ $(($num2%i)) -eq 0 ]
         then 
             prime=0;
         fi
   done

#19 check pallindrome or not
   while [ $num2 -ne 0 ]
   do
	digit=$(($num2%10))
	reverse=$(( ($reverse*10)+digit ))
	num2=$(($num2/10));
   done
   if [ $reverse -ne $num ]
   then
	pallindrom=0
   fi 

#31 check conditions for bor both prime and pallindrome
  if [[ $prime -eq 1 && $pallindrom -eq 1 ]]
  then
      echo "The number is prime and pallindrom"
  elif [ $prime -eq 1 ]
  then
      echo "The number is prime but not pallindrom"
  elif [ $pallindrom -eq 1 ]
  then    
      echo "The number is pallindrom but not prime"
  else
      echo "The number is neither pallindrom nor prime"
  fi
}

#function calling
result=$(myFun $a)
echo $result

