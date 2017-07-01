#!/bin/bash
echo Uninstalling
sudo rm -r /usr/local/opt/rp

echo Deleting myself . . .
echo 'To reinstall, go to https://github.com/InnovativeInventor/Random-Password'
echo Byebye!
sudo rm -r ~/Random-Password
sudo rm -r ~/randompassword.txt
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
sudo rm -r $DIR