echo "1. convert degF to degC "
echo "2. convert degC to degF "
read ch
function conversion() {
 choise=$1

#conversion of fahrenheit to celsius
  if [ $choise -eq 1 ]
  then
	read -p "Enter the temperature in Fahrenheit: " far
	cel=$(( (($far-32)*(5000/9)/1000) ))
	echo $cel
  fi 

#converion of  celsius to fahrenheit
  if [ $choise -eq 2 ]
  then
	read -p "Enter the  temperature in Celsius: " cel
	far=$(( ((($cel*(9000/5))/1000)+32) ))
	echo $far
  fi

 }

result=$(conversion $ch)

case $ch in
	1)
           echo "The temperature in Celsius is: $result"
        ;;
        2)
	   echo "The temperature in Fahrenheit is: $result"
        ;;
 esac;
