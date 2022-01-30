#!/bin/bash

# "+----------------------------------------+"
# "| EIPmap Lite Version		    |"
# "| @Author: Adrián Guerrero Amelín        |"
# "| License: GPLv3		            |"
# "+----------------------------------------+"

function saveCSV () {

	# We create a new file to delete the previously loaded data
	> $1.csv

	# We save the total number of elements of the array OPENPORTS
	j=$(echo "${#OPENPORTS[@]}")

	for (( i=0; i<j; i++ )); do
		echo "$1;${OPENPORTS[$i]};open" >> $1.csv
	done
} 
