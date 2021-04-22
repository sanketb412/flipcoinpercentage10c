echo
echo "# flipcoinpercentage"
echo

declare -A singlet
singlet[ ((count++)) ]=$((RANDOM%2))

if [ ${singlet[@]} -eq 1 ]
then
	echo "Head"
else
	echo "Tail"
fi

