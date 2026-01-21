#!/bin/bash

# $0 use for FileName so we can not use for entering any number

NO1=$1
NO2=$2
NO3=$3

<< comment

USING AND OPERATOR
First Condition True and Second Condition Also True then Result is True
comment

if [[ $NO1 -gt $NO2  ]] && [[ $NO1 -gt $NO3 ]]; 
then
	echo "Highest Number is: " $NO1

elif [[ $NO2 -gt $NO3 ]] && [[ $NO2 -gt $NO1 ]];
then
	echo "Highest Number is: " $NO2

else
	echo "Highest Number is: " $NO3
fi
