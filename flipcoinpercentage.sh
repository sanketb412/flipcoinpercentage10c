echo
echo "# flipcoinpercentage"
echo

echo "#UC1 Singlet"
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
echo

echo "#UC2 Doublet"

count1=0

for (( j=1; j<=20; j++ ));
do
        declare -A doublet
        declare -A doublet1
        doublet[ ((count1++)) ]=$((RANDOM%2))
        doublet1[ ((count1++)) ]=$((RANDOM%2))


                if [ ${doublet[@]} -eq 1 -a ${doublet1[@]} -eq 1 ]
                then
                        echo "Head Head"
                        ((HeadHead++))
                elif [ ${doublet[@]} -eq 1 -a ${doublet1[@]} -eq 0 ]
                then
                        echo "Head Tail"
                        ((HeadTail++))
                elif [ ${doublet[@]} -eq 0 -a ${doublet1[@]} -eq 1 ]
                then
                        echo "Tail Head"
                        ((TailHead++))
                elif [ ${doublet[@]} -eq 0 -a ${doublet1[@]} -eq 0 ]
                then
                        echo "Tail Tail"
                        ((TailTail++))
                else
                        exit;
                fi

        ((count1++))
done
echo
echo "Number of Head Head win = $HeadHead"
echo "Number of Head Tail win = $HeadTail"
echo "Number of Tail Head win = $TailHead"
echo "Number of Tail Tail win = $TailTail"
echo

w=$(( 100*$HeadHead/20 ))
x=$(( 100*$HeadTail/20 ))
y=$(( 100*$TailHead/20 ))
z=$(( 100*$TailTail/20 ))

echo "Head Head Percentage is $w"
echo "Head Tail Percentage is $x"
echo "Tail Head Percentage is $y"
echo "Tail Tail Percentage is $z"

echo

