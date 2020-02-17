#!/bin/bash
#
# type the following commands:
# chmod +x wiringop.sh
# sudo ./wiringop.sh
# sudo reboot


clear
cat << "EOF"

----------------------------------------------------------------------------

   Weclome to Installation

----------------------------------------------------------------------------

EOF

while true; do
    read -p "Would you like run apt-get update & apt-get upgrade? (y/n): " yn
    case $yn in
        [Yy]* ) apt-get -y update; apt-get -y upgrade; break;;
        [Nn]* ) break;;
        * ) echo "(Y/N)";;
    esac
done

while true; do
    read -p "Would you like to install WiringOP H3 CPU? This is required to control the GPIO (y/n): " yn
    case $yn in
        [Yy]* ) git clone https://github.com/zhaolei/WiringOP.git -b h3;
        cd WiringOP;
        ./build; cd ..;
        rm -rf WiringOP;
        break;;
        [Nn]* ) break;;
        * ) echo "(Y/N)";;
    esac
done

cat << "EOF"



----------------------------------------------------------------------------

 ___         _        _ _      _   _            ___ _      _    _           _
|_ _|_ _  __| |_ __ _| | |__ _| |_(_)___ _ _   | __(_)_ _ (_)__| |_  ___ __| |
 | || ' \(_-<  _/ _` | | / _` |  _| / _ \ ' \  | _|| | ' \| (_-< ' \/ -_) _` |
|___|_||_/__/\__\__,_|_|_\__,_|\__|_\___/_||_| |_| |_|_||_|_/__/_||_\___\__,_|


----------------------------------------------------------------------------
EOF

while true; do
    read -p "Reboot the Orange PI now? (y/n): " yn
    case $yn in
        [Yy]* ) reboot; break;;
        [Nn]* ) break;;
        * ) echo "Please select (y/n): ";;
    esac
done
