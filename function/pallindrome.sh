read -p "Enter a number: " num
 function isPallindrome ()
{
num=$1
reverse=0
while [ $num -ne 0 ]
do
	digit=$(($num%10))
	reverse=$(( ($reverse*10)+digit ))
	num=$(($num/10));
done
echo $reverse
}

result=$(isPallindromes $num)
if [ $num -eq $result ]
then
	echo "The number is Palindrone"
else
	echo "The number is not Palindrome"
fi
