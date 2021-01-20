#!/bin/bash -x
read -p "Enter number of flips: " n;
for(( i=0;i<$n;i++ ))
do
	b=$a;
	a=$toss;
	toss=$(( $RANDOM%2 ));
	if [[ $toss -eq 1 ]]
	then
		((hcount++));
		echo -n "H ";
		if [[ $a -eq 1 ]]
		then
			((hhcount++));
			if [[ $b -eq 1 ]]
			then
				((hhhcount++));
			else
				((hhtcount++));
			fi
		else
			((htcount++));
			if [[ $b -eq 1 ]]
			then
				((hthcount++));
			else
				((httcount++));
			fi
		fi
	else
		((tcount++));
		echo -n "T ";
		if [[ $a -eq 1 ]]
		then
			((thcount++))
			if [[ $b -eq 1 ]]
			then
				((thhcount++));
			else
				((thtcount++));
			fi
		else
			((ttcount++));
			if [[ $b -eq 1 ]]
			then
				((tthcount++));
			else
				((tttcount++));
			fi
		fi
	fi
done
Hcount=$(( ($hcount*100)/20 ));
Tcount=$(( ($tcount*100)/20 ));
echo "Percentage of Heads is: " $Hcount"%";
echo "Percentage of Tails is: " $Tcount"%";
