#!/bin/bash

echo "Enter the size of array"
read n
echo "Enter the numbers"
for (( i=0; i < $n; i++ ))
do
	read arr[$i]
done
for (( i=0; i < $n; i++ ))
do
	min=$i
	a=$(( $i + 1 ))
	for (( j=$a; j < $n; j++ ))
	do
		if [ ${arr[$j]} -lt ${arr[$min]} ]
			then
			min=$j
		fi
		t=${arr[$min]}
		arr[$min]=${arr[$i]}
		arr[$i]=$t
	done
done
echo -e "\nSorted array"
for (( i=0; i < $n; i++ ))
do
	echo ${arr[$i]}
done
