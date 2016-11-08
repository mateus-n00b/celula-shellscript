for x in {1..7}
do
	sf=$(tput setaf $x)
	for y in {1..7}
	do
		sb=$(tput setab $y)
		echo -n $sf $sb
		echo -n "F:$x B:$y"
	done
	echo $(tput sgr0)
done
