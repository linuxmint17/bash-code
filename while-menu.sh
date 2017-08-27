#!/usr/bin/env bash
#while-menu : a menu driven systemifo program
DELAY=3 #Number of seconds to display results
while [[ $REPLY != 0 ]]; do
	clear
	cat <<-_EOF_
		Please Select:
		1.Display systemifo
		2.Display Disk Space
		3.Display Home Space Utilization
		0.Quit
	_EOF_
	read -p "Enter the Selecttion [0-3]"

	if [[ $REPLY =~ ^[0-3]$ ]] ; then
		if [[ $REPLY == 1 ]]; then
			echo "Hostname :$HOSTNAME "
			uptime
			sleep $DELAY
			continue
		fi
		if [[  $REPLY == 2  ]]; then
			df -h
			sleep $DELAY
			continue
		fi
		if [[ $REPLY == 3 ]]; then
			if [[ $(id -u ) -eq 0 ]]; then
				echo "Home Space Utilization (All User)"
				du -sh /home/*
				sleep $DELAY
				continue
			else
				echo " HOME  Space Utilization ($USER)"
				du -sh $HOME
				sleep $DELAY
				continue
			fi
			sleep $DELAY
		fi
	else
		echo "Invalid entry "
		sleep $DELAY
		break

	fi
done
echo "program terminated"
