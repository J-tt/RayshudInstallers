#!/bin/bash
clear
echo Rays Hud Auto Install Script Linux
echo Please Enter your \install location 
echo \(default is ~\/.steam\steam\/steamapps\/common\/Team\ Fortress\ 2\/tf\/custom\/\)
echo
echo
sudo apt-get install git
OPTIONS2="Change Continue"
select opt in $OPTIONS2; do
 if [ "$opt" = "Change" ]; then
  clear
  echo Enter Location \(do not follow with a slash\):
  read LOCATION
  clear
  break
 elif [ "$opt" = "Continue" ]; then
  LOCATION=$HOME"/.steam/steam/steamapps/common/Team Fortress 2/tf/custom"
  clear
  break
 else
  clear
  echo bad option
 fi
done
echo Installing to\: $LOCATION
sudo rm -r "$LOCATION/rayshud"
git clone https://github.com/raysfire/rayshud.git "$LOCATION/rayshud"
clear
echo Done\!
