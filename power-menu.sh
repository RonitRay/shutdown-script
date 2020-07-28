#!/bin/bash

function lo {
	i3-msg exit	
}

function sd {
	shutdown now
}

function rs {
	shutdown -r now
}

function menu {
	clear
	echo
	echo -e "\t\tUser Menu\n"
	echo -e "\t1. Logout"
	echo -e "\t2. Shutdown"
	echo -e "\t3. Restart"
	echo -en "\t Choose:"
	read -n 1 option
}

while [ 1 ]
do
	menu
	case $option in
	0)
	break ;;
	1)
	lo ;;
	2)
	sd ;;
	3)
	rs ;;
	*)
	clear
	echo "Incorrect input";;
	esac
	echo -en "\n\n\t\tHit any key to continue"
	read -n 1 line
done
clear
