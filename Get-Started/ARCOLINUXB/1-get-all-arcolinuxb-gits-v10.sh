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

echo "This updates the existing githubs"
echo "Fill the array with the original folders first"

# use ls -d */ > list to get the list of the created githubs and copy/paste in

directories=(
arco-awesome/
arco-bspwm/
arco-budgie/
arco-cinnamon/
arco-deepin/
arco-gnome/
arco-herbstluftw/
arco-i3/
arco-jwm/
arco-lxqt/
arco-mate/
arco-openbox/
arco-plasma/
arco-qtile/
arco-xfce/
arco-xmonad/
arco-xtended/
)

count=0

for name in "${directories[@]}"; do
	count=$[count+1]
	tput setaf 1;echo "Github "$count;tput sgr0;
	git clone https://github.com/arcolinuxb/$name
	echo "#################################################"
	echo "################  "$(basename `pwd`)" done"
	echo "#################################################"
done
