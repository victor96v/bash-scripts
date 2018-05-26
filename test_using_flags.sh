#!/bin/bash
while getopts "c" OPTION
do
	case $OPTION in
		c)
			echo "You set flag -cuda"
			exit
			;;
	esac
done
echo "ended"
