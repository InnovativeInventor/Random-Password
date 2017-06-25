#!/bin/bash
echo Installing
sudo mkdir /usr/local/opt/rp
echo Downloading
git clone git://github.com/InnovativeInventor/Random-Password
sudo cp -r ~/Random-Password/bin /usr/local/opt/rp/
sudo mv /usr/local/opt/rp/bin/rpsafe.sh /usr/local/opt/rp/bin/rpsafe
sudo mv /usr/local/opt/rp/bin/rp.sh /usr/local/opt/rp/bin/rp
sudo chmod +x /usr/local/opt/rp/bin/rpsafe
sudo chmod +x /usr/local/opt/rp/bin/rp
echo ' ' >> ~/.bash_profile
source ./bash_profile
echo '# Setting PATH for random password generator' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/rp/bin:$PATH"' >> ~/.bash_profile
echo 'Done! Type rp to start.'