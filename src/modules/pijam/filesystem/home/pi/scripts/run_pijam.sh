#!/usr/bin/env bash

# Replace desktop backgroud with FullPageOS logo
export DISPLAY=:0
pcmanfm --set-wallpaper="/home/pi/Pictures/lxde-desktop-background-fullpageos-logo-blackbg-1920x1080.png"

# Remove cursor from desktop
unclutter -display :0 -noevents -grab

# Run fullpagedashboard client experimental auto update scripts
cd /home/pi/electron/fullpageos-experimental-shell-scripts
./update

#cd /home/pi/electron/fullpagedashboard-client
screen -d -m electron /home/pi/electron/fullpagedashboard-client/main.js > /tmp/electron.log 2>&1
