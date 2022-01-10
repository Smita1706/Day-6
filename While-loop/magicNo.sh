echo "Think a number betwen 1 and 100"
a=100
b=0
c=50
num=100
while  [ $num -ne 0 ]
do

	read -p "If the number is greater than $c enter '1' else enter '0' OR If you got your number then enter '2': " d

	if [ $d -eq 2 ]
	then
		echo "Your number is : " $c
		break

	else
		if [ $d -eq 1 ]
		then
			b=$c
			c=$(($b+(($a-$b)/2)))
		else
			a=$c
			c=$(($b+(($a-$b)/2)))
		fi

		if [ $a -eq $(($b+2)) ]
		then
			echo "Your number is : " $c
			break
		fi
	fi
((num--))
done
