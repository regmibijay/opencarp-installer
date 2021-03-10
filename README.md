# opencarp-installer
Installs OpenCARP V5.0 and compile Meshalyzer with one script

## Disclaimer
This script is intended to use in as is form without any warranty or guarantee to work. You are responsible for your own actions.

## Installation:
  You can clone this repo from CLI or download the content from Github web interface.

## Usage:
  `opencarp-installer.sh` is a standalone bash script. You will need to have administrator privileges(root) to add/remove programs. To run the script:  
  `$ git clone https://github.com/regmibijay/opencarp-installer/` to clone the repo  
  `$ cd opencarp-installer` changing directory to opencarp-installer  
  `$ sudo chmod +x opencarp-installer.sh` giving execute permission to installer  
  `$ ./opencarp-installer.sh` launching installer script  

## Post Installation
This script will only compile meshalyzer and not move it to directory you want it to be in. For that you will have to run:   
 `$ sudo cp meshalyzer/meshalyzer <directory you want it to be in>`  
 
 ##Support
 If you encounter any problem, feel free to create an issue. But keep in mind, I do not provide any liability of support whatsoever.
