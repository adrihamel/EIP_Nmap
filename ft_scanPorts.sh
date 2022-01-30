#!/bin/bash

# "+----------------------------------------+"
# "| EIPmap Lite Version	            |"
# "| @Author: Adrián Guerrero Amelín        |"
# "| License: GPLv3                         |"
# "+----------------------------------------+"

YELLOW='\033[1;33m'
NOCOLOR='\033[0m'

function scanPorts () {
	
   	cont=-1
	echo -e "\n ${YELLOW}[*] ${NOCOLOR}Port scan on $1 in progress"
	
	for (( i=0; i<$2; i++ )); do
		(exec timeout 0.1 bash -c "</dev/tcp/$1/$i") &>/dev/null
		if [[ $? == 0 ]]; then
         		let cont=$cont+1
         		OPENPORTS[$cont]=$i
      		fi
   	done
}
