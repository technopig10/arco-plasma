#!/bin/bash
set -e
##################################################################################################################
# Author	:	Erik Dubois
# Website	:	https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxb.com
# Website	:	https://www.arcolinuxiso.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################
echo "#################################################"
echo "If it feels like the downloads are too slow"
echo "Stop the installation with CTRL + C"
echo "and run the alias - mirror in the terminal"
echo "#################################################"

echo "Removing xcursor-breeze to avoid conflict with breeze"
#sudo pacman -R xcursor-breeze --noconfirm

sudo pacman -Syyu --noconfirm
#installing displaymanager or login manager
sudo pacman -S --noconfirm --needed sddm
sudo pacman -S --noconfirm --needed sddm-kcm
#sudo pacman -S --noconfirm --needed arcolinux-wallpapers-git
sudo pacman -S --noconfirm --needed dolphin konsole kate
#installing desktop environment
sudo pacman -S plasma --noconfirm --needed
#enabling displaymanager or login manager
sudo systemctl enable sddm.service -f
sudo systemctl set-default graphical.target


#Remove anything you do not like from the installed applications

#sudo pacman -R ...
