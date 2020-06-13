#!/bin/bash
set -e
##################################################################################################################
# Author 	: 	Erik Dubois
# Website : https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

echo
echo "################################################################"
echo "#####  Fixing glitches in simplescreenrecorder on INTEL   ######"
echo "#####         FOR THE COMPUTER OF ERIK DUBOIS             ######"
echo "################################################################"
echo
tput setaf 1
echo "################################################################"
echo "#####  DO NOT JUST RUN THIS - THIS MIGHT BRICK YOUR SYSTEM  ####"
echo "################################################################"
tput sgr0
echo
echo "Select the correct desktop"
echo
echo "0.  Do nothing"
echo "1.  ArcoLinux (xfce,openbox,i3)"
echo "2.  Awesome"
echo "3.  Bspwm"
echo "4.  Budgie"
echo "5.  Cinnamon"
echo "6.  Deepin"
echo "7.  Dwm"
echo "8.  Gnome"
echo "9.  Herbstlufwm"
echo "10. i3"
echo "11. jwm"
echo "12. LXQt"
echo "13. Mate"
echo "14. Openbox"
echo "15. Plasma"
echo "16. Qtile"
echo "17. Spectrwm"
echo "18. Xfce"
echo "19. Xmonad"
echo "Type the number..."

read CHOICE

WDP=$(dirname $(readlink -f $(basename `pwd`)))

SETTING0="settings/intel/20-intel.conf"
SETTING1="settings/intel-uxa-tear-free/20-intel.conf"
SETTING2="settings/intel-uxa/20-intel.conf"
DESTINATION1="/etc/X11/xorg.conf.d/"

case $CHOICE in

    0 )
      echo
      echo "########################################"
      echo "We did nothing as per your request"
      echo "########################################"
      echo
      ;;

    1 )
      sudo cp $WDP/$SETTING0 $DESTINATION1
      ;;
    2 )
      #sudo cp $WDP/$SETTING2 $DESTINATION1
      ;;
    3 )
      sudo cp $WDP/$SETTING1 $DESTINATION1
      ;;
    4 )
      sudo cp $WDP/$SETTING0 $DESTINATION1
      ;;
    5 )
      sudo cp $WDP/$SETTING2 $DESTINATION1
      ;;
    6 )
      sudo cp $WDP/$SETTING2 $DESTINATION1
      ;;
    8 )
      sudo cp $WDP/$SETTING0 $DESTINATION1
      ;;
    9 )
      sudo cp $WDP/$SETTING0 $DESTINATION1
      ;;
    10 )
      sudo cp $WDP/$SETTING0 $DESTINATION1
      ;;
    11 )
      sudo cp $WDP/$SETTING0 $DESTINATION1
      ;;
    12 )
      #sudo cp $WDP/$SETTING0 $DESTINATION1
      ;;
    13 )
      sudo cp $WDP/$SETTING0 $DESTINATION1
      ;;
    14 )
      sudo cp $WDP/$SETTING0 $DESTINATION1
      ;;
    15 )
      #if [ -f "~/.config/kwinrc" ] ;
      #then cp ~/.config/kwinrc ~/.config/kwinrc-backup
      #fi
      #cp $WDP/settings/kwinrc/kwinrc ~/.config/kwinrc
      ;;
    16 )
      sudo cp $WDP/$SETTING1 $DESTINATION1
      ;;
    17 )
      sudo cp $WDP/$SETTING1 $DESTINATION1
      ;;
    18 )
      sudo cp $WDP/$SETTING0 $DESTINATION1
      ;;
    19 )
      sudo cp $WDP/$SETTING2 $DESTINATION1
      ;;
    * )
      echo "#################################"
      echo "Choose the correct number"
      echo "#################################"
      ;;
esac

echo "###########################################################"
echo "If you now realize you should not have choosen a number"
echo "Delete /etc/X11/xorg.conf.d/20-intel.conf with sudo rm"
echo "###########################################################"

echo "###########################################################"
echo "Time to reboot"
echo "###########################################################"