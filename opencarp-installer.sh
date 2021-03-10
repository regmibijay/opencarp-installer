#!/bin/bash
echo OpenCARP and Meshalyzer Installer V1.0
echo This program will need to download and install a couple of files.
echo -----------------------------
echo Initializing ...
echo Downloading Opencarp 5.0, this might take a while.
sudo apt-get update>/dev/null 2>&1 && sudo apt install -y wget git>/dev/null 2>&1
wget https://opencarp.org/deb/opencarp-v5.0.deb>/dev/null 2>&1
echo Trying to install Opencarp 5.0
sudo dpkg -i opencarp-v5.0.deb>/dev/null 2>&1
echo Fixing dependencies
sudo apt -f -y install>/dev/null 2>&1
echo Configuring OpenCARP
sudo dpkg -i opencarp-v5.0.deb>/dev/null 2>&1
echo Done!
echo -----------------------------
echo Preparing to install Meshalyzer
echo Cloning to ./meshalyzer
git clone https://git.opencarp.org/openCARP/meshalyzer.git>/dev/null 2>&1
echo Installing dependencies
sudo apt-get install -y --no-install-recommends ca-certificates fluid freeglut3-dev g++ git libfltk1.3-dev libglew-dev libglu1-mesa-dev libpng-dev>/dev/null 2>&1
echo Switching directory to compile Meshalyzer from scratch
cd meshalyzer
echo Compiling Meshalyzer, this might take a while
make -j>/dev/null 2>&1
echo Done!
echo -----------------------------
echo Housekeeping
cd ..
echo Deleting OpenCARP Installer file
rm opencarp-v5.0.deb
echo Done!
echo -----------------------------
echo Script end, all steps have been completed.
