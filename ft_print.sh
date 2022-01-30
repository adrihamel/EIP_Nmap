#!/bin/bash

# "+----------------------------------------+"
# "| EIPmap Lite Version		    |"
# "| @Author: Adrián Guerrero Amelín        |"
# "| License: GPLv3.		            |"
# "+----------------------------------------+"

RED='\033[1;31m'
GREEN='\033[1;32m'
NOCOLOR='\033[0m'

function openPorts () {

	if [[ ${#OPENPORTS[@]} == 0 ]]; then
		echo -e "\n ${RED}[*] ${NOCOLOR}No open ports in $1"
	else

		# We save the total number of elements of the array OPENPORTS
   		j=$(echo "${#OPENPORTS[@]}")

   		for (( i=0; i<j; i++ )); do
			echo -e "    ${GREEN}[+] ${OPENPORTS[$i]} ${NOCOLOR}-- open port"
		done
	fi
}
