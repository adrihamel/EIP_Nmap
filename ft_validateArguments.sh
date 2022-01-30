#!/bin/bash

# "+----------------------------------------+"
# "| EIPmap Lite Version	            |"
# "| @Author: Adrián Guerrero Amelín        |"
# "| License: GPLv3                         |"
# "+----------------------------------------+"

function validateArguments () {
	
	cont=0
	correct=0
	
	if [ -z $domain_ip ]; then
		echo "Error, you have not entered any parameters\n"
	else
		cont=$((cont+1))
	fi
	
	# If no port limit is entered
	if [[ $limitPort == "" ]]; then
		limitPort=0
	fi

	# Validate IP
	if [[ $domain_ip =~ ^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$ ]]; then
		cont=$((cont+1))
		correct=1
	fi
	
	# Validate domain
	if [[ $domain_ip =~ [a-zA-Z0-9].[a-zA-Z0-9] ]]; then
		cont=$((cont+1))
		correct=1
	fi
	
	# If it is correct and the domain or IP is valid
	if [[ $cont != 0 && $correct == 1 ]]; then
		return 0
	else
		echo -e "\nError, bad arguments\n"
		return 1
	fi
}

