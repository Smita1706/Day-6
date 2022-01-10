read -p "enter the no : " a
prime=1;
for (( i=2 ; i<a ; i++ ))
do 
     if [ $(($a%$i)) -eq 0 ]
      then
       prime=0;
     fi
done
if [ $prime -eq 1 ]
then
 echo "$a is prime no"
else
 echo "$a is not a prime no"
fi
