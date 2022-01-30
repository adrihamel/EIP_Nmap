#!/bin/bash

# "+----------------------------------------+"
# "| EIPmap Lite Version	            |"
# "| @Author: Adrián Guerrero Amelín        |"
# "| License: GPLv3                         |"
# "+----------------------------------------+"

# Imports
source ./ft_print.sh
source ./ft_savecsv.sh
source ./ft_scanPorts.sh
source ./ft_validateArguments.sh

# Gobal
declare -a OPENPORTS 
exit=1

echo "EIPmap developed by the student Adrián Guerrero Amelin" 
echo "Exec time: $(date)" 
echo " "

while [ $exit != 0  ]; do
	
	echo "Enter a domain or IP address: "
	read domain_ip
	
	echo -e "\nEnter a port limit to scan: "
	read limitPort
	
	validateArguments $domain_ip $limitPort

	# We get the return value of the function
	exit=$?
done 

# Functions
scanPorts $domain_ip $limitPort
openPorts $domain_ip
saveCSV $domain_ip

exit
