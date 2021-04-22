echo
echo "# flipcoinpercentage"
echo

echo "#UC1"
echo
count=0

for (( i=1; i<=10; i++ ))
do
	declare -A singlet
	singlet[ ((count++)) ]=$((RANDOM%2))

	if [ ${singlet[@]} -eq 1 ]
	then
		echo "Head"
		((Head++))
	else
		echo "Tail"
		((Tail++))
	fi

	((count++))
done
echo
echo "number of heads win = $Head"
echo "number of tails win = $Tail"
echo
if [ $Head -gt $Tail ];
then
        x=$((($Head-$Tail)*100/$Head))
        echo "Percentage of the singlet between Head to Tail is $x%"
else
        y=$((($Tail-$Head)*100/$Tail))
        echo "Percentage of the singlet between Tail to Head is $y% "
fi
