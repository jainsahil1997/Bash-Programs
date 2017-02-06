#!/bin/bash

echo "Enter the size of array"
read n
echo "Enter the numbers"
for (( i=0; i < $n; i++ ))
do
	read arr[$i]
done
for((i=1;i<n;i++))
do
j=$i-1
temp=${arr[$i]}
while((j>=0 && arr[j]>temp))
do
arr[$j+1]=${arr[$j]}
j=$j-1
done
arr[j+1]=$temp
done


echo -e "\nSorted array"
for (( i=0; i < $n; i++ ))
do
	echo ${arr[$i]}
done