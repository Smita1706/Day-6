MAX_WORKING_DAY=20;
PAY_PER_HOUR=20;
PRESENT=1;
PART_TIME=2;

totalWorkingHour=0;

for ((day=1;day<=$MAX_WORKING_DAY;day++))
do
isPresent=$((RANDOM%3));
      case $isPresent in
           $PRESENT)
            workingHour=8;
            ;;
           $PART_TIME)
           workingHour=4; 
           ;;
           *)
           workingHour=0;
   esac;
    totalWorkingHour=$(($totalWorkingHour +$workingHour));
done
salary=$(($totalWorkingHour * $PAY_PER_HOUR));
echo "Employee monthly wage earned : $salary $ (total working hour : $totalWorkingHour)";
