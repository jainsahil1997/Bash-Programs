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
	a=$(( $n - $i - 1))
for (( j = 0; j < $a ; j++ ))
do
	if [ ${arr[$j]} -gt ${arr[(($j+1))]} ]
		then
		t=${arr[$j]}
		arr[$j]=${arr[(($j+1))]}
		arr[(($j+1))]=$t
	fi
done
done
echo -e "\nSorted array"
for (( i=0; i < $n; i++ ))
do
	echo ${arr[$i]}
done
