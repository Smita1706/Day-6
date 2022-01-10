echo "Let start the game of gambling"
money=100
bet=0
won=0
while [[ $money -gt 0 && $money -lt 200 ]]
do
	((++bet))
	((--money))
	try=$((RANDOM%2))

	if [ $try -eq 1 ]
	then
		((++won))
		money=$(($money+2))
	fi

done

if [ $money -eq 0 ]
then
	echo "I Loose"
else
	echo "I Won"
fi
echo "Total money= "$money
echo "Total number of bet made= "$bet
echo "Number of times won=" $won
