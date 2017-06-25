#!/bin/bash
echo Uninstalling
rm -r /usr/local/opt/rp

echo Deleting myself . . .
echo 'To reinstall, go to https://github.com/InnovativeInventor/Random-Password'
echo Byebye!
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm -r $DIR