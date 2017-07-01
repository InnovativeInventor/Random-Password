#!/bin/bash
echo Uninstalling

# Removing from .bash_profile
mv ~/.bash_profile.bac ~/.bash_profile

# Deleting files
sudo rm -r /usr/local/opt/rp
echo Deleting myself . . .
echo 'To reinstall, go to https://github.com/InnovativeInventor/Random-Password'
echo Byebye!
sudo rm -r ~/Random-Password
sudo rm -r ~/randompassword.txt

# These commands are a bit noisy so I decided to silence them
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" >> /dev/null
sudo rm -r $DIR >> /dev/null