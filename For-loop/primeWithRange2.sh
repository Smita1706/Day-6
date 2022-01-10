read -p "Enter the no : " a
read -p "enter the no : " b

for(( i=a ; i<=$b ; i++ ))
do
  prime=1;
    for(( j=2 ; j<i ; j++ ))
     do
        if [ $(($i%$j)) -eq 0 ]
         then
            prime=0;
          fi
      done
    if [ $prime -eq 1 ]
     then
       echo "$i is prime no in range $a to $b";
      fi
done
