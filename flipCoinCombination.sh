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
if [[ $Hcount -gt $Tcount ]]
then
	echo "HEAD wON";
else
	echo "TAIL WON";
fi
HHcount=$(( ($hhcount*100)/20 ));
HTcount=$(( ($htcount*100)/20 ));
THcount=$(( ($thcount*100)/20 ));
TTcount=$(( ($ttcount*100)/20 ));
echo "Percentage of HeadHead is: " $HHcount"%";
echo "Percentage of HeadTail is: " $HTcount"%";
echo "Percentage of TailHead is: " $THcount"%";
echo "Percentage of TailTail is: " $TTcount"%";
if [[ $HHcount -gt $HTcount && $HHcount -gt $THcount && $HHcount -gt $TTcount ]]
then
	echo "HEAD HEAD WON";
elif [[ $HTcount -gt $HHcount && $HTcount -gt $THcount && $HTcount -gt $TTcount ]]
then
	echo "HEAD TAIL WON";
elif [[ $THcount -gt $HHcount && $THcount -gt $HTcount && $THcount -gt $TTcount ]]
then
	echo "TAIL HEAD WON";
else
	echo "TAIL TAIL WON";
fi
HHHcount=$(( ($hhhcount*100)/20 ));
HHTcount=$(( ($hhtcount*100)/20 ));
HTHcount=$(( ($hthcount*100)/20 ));
HTTcount=$(( ($httcount*100)/20 ));
THHcount=$(( ($thhcount*100)/20 ));
THTcount=$(( ($thtcount*100)/20 ));
TTHcount=$(( ($tthcount*100)/20 ));
TTTcount=$(( ($tttcount*100)/20 ));
echo "Percentage of HeadHeadHead is: " $HHHcount"%";
echo "Percentage of HeadHeadTail is: " $HHTcount"%";
echo "Percentage of HeadTailHead is: " $HTHcount"%";
echo "Percentage of HeadTailTail is: " $HTTcount"%";
echo "Percentage of TailHeadHead is: " $THHcount"%";
echo "Percentage of TailHeadTail is: " $THTcount"%";
echo "Percentage of TailTailHead is: " $TTHcount"%";
echo "Percentage of TailTailTail is: " $TTTcount"%";
if [[ $HHHcount -gt $HHTcount && $HHHcount -gt $HTHcount && $HHHcount -gt $HTTcount && $HHHcount -gt $THHcount && $HHHcount -gt $THTcount && $HHHcount -gt $TTHcount && $HHHcount -gt $TTTcount ]]
then
	echo "HEAD HEAD HEAD WON";
elif [[ $HHTcount -gt $HHHcount && $HHTcount -gt $HTHcount && $HHTcount -gt $HTTcount && $HHTcount -gt $THHcount && $HHTcount -gt $THTcount && $HHTcount -gt $TTHcount && $HHTcount -gt $TTTcount ]]
then
	echo "HEAD HEAD TAIL WON";
elif [[ $HTHcount -gt $HHHcount && $HTHcount -gt $HHTcount && $HTHcount -gt $HTTcount && $HTHcount -gt $THHcount && $HTHcount -gt $THTcount && $HTHcount -gt $TTHcount && $HTHcount -gt $TTTcount ]]
then
	echo "HEAD TAIL HEAD WON";
elif [[ $HTTcount -gt $HHHcount && $HTTcount -gt $HHTcount && $HTTcount -gt $HTHcount && $HTTcount -gt $THHcount && $HTTcount -gt $THTcount && $HTTcount -gt $TTHcount && $HTTcount -gt $TTTcount ]]
then
	echo "HEAD TAIL TAIL WON";
elif [[ $THHcount -gt $HHHcount && $THHcount -gt $HHTcount && $THHcount -gt $HTHcount && $THHcount -gt $HTTcount && $THHcount -gt $THTcount && $THHcount -gt $TTHcount && $THHcount -gt $TTTcount ]]
then
	echo "TAIL HEAD HEAD WON";
elif [[ $THTcount -gt $HHHcount && $THTcount -gt $HHTcount && $THTcount -gt $HTHcount && $THTcount -gt $HTTcount && $THTcount -gt $THHcount && $THTcount -gt $TTHcount && $THTcount -gt $TTTcount ]]
then
	echo "TAIL HEAD TAIL WON";
elif [[ $TTHcount -gt $HHHcount && $TTHcount -gt $HHTcount && $TTHcount -gt $HTHcount && $TTHcount -gt $HTTcount && $TTHcount -gt $THHcount && $TTHcount -gt $THTcount && $TTHcount -gt $TTTcount ]]
then
	echo "TAIL TAIL HEAD WON";
else
	echo "TAIL TAIL TAIL WON";
fi
