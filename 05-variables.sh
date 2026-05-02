#!/bin/bash 

@#if you want a command to be exectued and take the o/p into a variable then we can use command substitution

START_TIMESTAMP= $(date + %s)

echo "print current date: $START_TIMESTAMP"

sleep 10

END_TIMESTAMP= $(date + %s)

TOTAL_TIME=$((END_TIMESTAMP - START_TIMESTAMP))

echo "total time taken: $TOTAL_TIME seconds"