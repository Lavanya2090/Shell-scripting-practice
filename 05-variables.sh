#!/bin/bash 

NUM1=100
NUM2=200

echo "sum is:=$($NUM1 + $NUM2))" #o/p is 300

#2nd example when 2nd variable is string it will consider as zero

NUM1=100
NUM2=lavanya

echo "sum is:=$($NUM1 + $NUM2))" #o/p is 100

#just an example for array

FRUITS=("apple" "banana" "orange")
echo "Fruit are: ${FRUITS[@]}"
echo "First fruit is : ${FRUITS[0]}"
echo "Second fruit is : ${FRUITS[1]}"
echo "Third fruit is : ${FRUITS[2]}"