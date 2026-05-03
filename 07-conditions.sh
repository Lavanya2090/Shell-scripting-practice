#!bin/bash

NUM=5

if [ $NUM -gt 10 ]; then
    echo "Number is greater than 10"

elif [ $NUM -eq 10 ]; then
    echo "Number is equal to 10"
else
    echo "Number is less than 10"
fi