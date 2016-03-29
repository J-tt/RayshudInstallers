@echo off
title Installing Rayshud
echo Please choose an install location...
echo Default is: C:\Program Files (x86)\Steam\SteamApps\common\Team Fortress 2\tf\ 
echo Change Default?
echo (Y)es (N)o
set /p choice=
If choice==Y (set /p location="Enter Install Location") ELSE (set location="C:\Program Files (x86)\Steam\SteamApps\common\Team Fortress 2\tf\")
cd %location%
mkdir custom
cd custom
start %~dp0/PortableGit/git-cmd git clone https://github.com/raysfire/rayshud.git
echo Done
rmdir %~dp0