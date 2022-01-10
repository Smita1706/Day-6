read -p "enter the no : " a
res=1;
for (( i=1 ; i<=a ; i++ ))
do
    res=$(($res*$i));
done
echo "factorial of $a is $res"
