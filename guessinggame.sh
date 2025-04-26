#!/usr/bin/env bash

function right {
	echo "You have write the correct answer!"
}

control=0

while [[ $control -eq 0 ]]
do
	echo "Please type the number of files in current directory:"
	read response
	echo "You entered : $response"
	numoffiles=(*)
	numoffiles=${#numoffiles[@]}
	echo "the number of files is: $numoffiles"
	if [[ response -eq numoffiles ]]
	then
		right
		control=1
	elif [[ response -gt numoffiles ]]
	then
		echo " Higher"
	else
		echo "Lower"
	fi
done
