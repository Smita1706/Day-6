read -p "Enter the last range of the harmonic series: " range
num=0
 for ((i=1;i<=$range;i++))
 do
   ans=`awk "BEGIN {print (1/$i)}"` 
   num=`awk "BEGIN {print ($num+$ans)}"`
 done
echo "The sum of the harmonic mean is: " $num
