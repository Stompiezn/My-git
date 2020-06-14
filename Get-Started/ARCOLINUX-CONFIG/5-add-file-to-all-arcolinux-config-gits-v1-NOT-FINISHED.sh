#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
startpath="/home/erik/ARCOLINUX/arcolinux-config/etc/skel/.config"
endpath1="/home/erik/ARCOLINUX"
echo "This copies a file to all existing arcolinux-config-   githubs"

echo "Input is a file path - last part - /etc/skel/.config/... "
echo "this will be copy pasted into the configs"

count=0

echo "Give me path to input file"
read input

for name in $(ls -d arcolinux-config-xfce*/); do
	count=$[count+1]
	#cd $name
	tput setaf 1;echo "Github "$count;tput sgr0;
	#cp /home/erik/ARCOLINUX/arcolinux-config/etc/skel/.config/mimeapps.list /home/erik/ARCOLINUX/arcolinux-config-xfce/etc/skel/.config/mimeapps.list
	endpath=$endpath1 & "/"  $name
	cp $startpath/mimeapps.list $endpath$nameetc/skel/.config/mimeapps.list

	echo "#################################################"
	echo "################  "$(basename `pwd`)" done"
	echo "#################################################"
	cd ..
done
