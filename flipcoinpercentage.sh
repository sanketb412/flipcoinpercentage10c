echo
echo "# flipcoinpercentage"
echo

echo "#### UC1 Singlet ####"
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

echo "#### UC2 Doublet ####"

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

echo "Head Head Percentage is $w%"
echo "Head Tail Percentage is $x%"
echo "Tail Head Percentage is $y%"
echo "Tail Tail Percentage is $z%"

echo

echo "#### UC3 Triplet ####"

count2=0

for (( k=1; k<=40; k++ ));
do
        declare -A triplet
        declare -A triplet1
        declare -A triplet2
        triplet[ ((count2++)) ]=$((RANDOM%2))
        triplet1[ ((count2++)) ]=$((RANDOM%2))
        triplet2[ ((count2++)) ]=$((RANDOM%2))

                if [ ${triplet[@]} -eq 1 -a ${triplet1[@]} -eq 1 -a ${triplet2[@]} -eq 1 ]
                then
                        echo "Head Head Head"
                        ((HeadHeadHead++))
                elif [ ${triplet[@]} -eq 1 -a ${triplet1[@]} -eq 1 -a ${triplet2[@]} -eq 0 ]
                then
                        echo "Head Head Tail"
                        ((HeadHeadTail++))
                elif [ ${triplet[@]} -eq 1 -a ${triplet1[@]} -eq 0 -a ${triplet2[@]} -eq 1 ]
                then
                        echo "Head Tail Head"
                        ((HeadTailHead++))
                elif [ ${triplet[@]} -eq 1 -a ${triplet1[@]} -eq 0 -a ${triplet2[@]} -eq 0 ]
                then
                        echo "Head Tail Tail"
                        ((HeadTailTail++))
                elif [ ${triplet[@]} -eq 0 -a ${triplet1[@]} -eq 1 -a ${triplet2[@]} -eq 1 ]
                then
                        echo "Tail Head Head"
                        ((TailHeadHead++))
                elif [ ${triplet[@]} -eq 0 -a ${triplet1[@]} -eq 1 -a ${triplet2[@]} -eq 0 ]
                then
                        echo "Tail Head Tail"
                        ((TailHeadTail++))
                elif [ ${triplet[@]} -eq 0 -a ${triplet1[@]} -eq 0 -a ${triplet2[@]} -eq 1 ]
                then
                        echo "Tail Tail Head"
                        ((TailTailHead++))
                elif [ ${triplet[@]} -eq 0 -a ${triplet1[@]} -eq 0 -a ${triplet2[@]} -eq 0 ]
                then
                        echo "Tail Tail Tail"
                        ((TailTailTail++))
                else
                        exit;
                fi

        ((count2++))
done
echo
echo "Number of Head Head Head win = $HeadHeadHead"
echo "Number of Head Head Tail win = $HeadHeadTail"
echo "Number of Head Tail Head win = $HeadTailHead"
echo "Number of Head Tail Tail win = $HeadTailTail"
echo "Number of Tail Head Head win = $TailHeadHead"
echo "Number of Tail Head Tail win = $TailHeadTail"
echo "Number of Tail Tail Head win = $TailTailHead"
echo "Number of Tail Tail Tail win = $TailTailTail"

echo

a=$(( 100*$HeadHeadHead/40 ))
b=$(( 100*$HeadHeadTail/40 ))
c=$(( 100*$HeadTailHead/40 ))
d=$(( 100*$HeadTailTail/40 ))
e=$(( 100*$TailHeadHead/40 ))
f=$(( 100*$TailHeadTail/40 ))
g=$(( 100*$TailTailHead/40 ))
h=$(( 100*$TailTailTail/40 ))

echo "Head Head Head Percentage is $a%"
echo "Head Head Tail Percentage is $b%"
echo "Head Tail Head Percentage is $c%"
echo "Head Tail Tail Percentage is $d%"
echo "Tail Head Head Percentage is $e%"
echo "Tail Head Tail Percentage is $f%"
echo "Tail Tail Head Percentage is $g%"
echo "Tail Tail Tail Percentage is $h%"
echo
