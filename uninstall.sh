#!/bin/bash
echo Uninstalling
sudo rm -r /usr/local/opt/rp

echo Deleting myself . . .
echo 'To reinstall, go to https://github.com/InnovativeInventor/Random-Password'
echo Byebye!
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
sudo rm -r $DIR