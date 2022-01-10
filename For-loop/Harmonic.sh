read -p "Enter the last range of the harmonic series: " range
num=0
for ((i=1;i<=$range;i++))
do
echo $i
num=$(( $num + (1/$i) ))
done
echo "The sum of the harmonic mean is: " $num
