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

# https://wiki.archlinux.org/index.php/TLP
#TLP brings you the benefits of advanced power management for Linux without
#the need to understand every technical detail. TLP comes with a default
#configuration already optimized for battery life, so you may just install
# and forget it. Nevertheless TLP is highly customizable to fulfill your
# specific requirements

echo "Install Pixma scaner"

sudo pacman -S --noconfirm --needed sane 
sudo pacman -S --noconfirm --needed skanlite
sh AUR/install-scangearmp2-mg7700-v*.sh
sudo echo bjnp://192.168.88.250 >> /etc/sane.d/pixma.conf

echo "################################################################"
echo "####               Pixma scaner installed               ########"
echo "################################################################"
