#!/bin/bash -x
read -p "Enter number of flips: " n;
for(( i=0;i<$n;i++ ))
do
	b=$a;
	a=$toss;
	toss=$(( $RANDOM%2 ));
