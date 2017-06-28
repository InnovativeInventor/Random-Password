#!/bin/bash
echo Installing
sudo mkdir /usr/local/opt/rp
echo Downloading
sudo rm -r ~/Random-Password
git clone https://github.com/InnovativeInventor/Random-Password
sudo cp -r ~/Random-Password/bin /usr/local/opt/rp/
sudo mv /usr/local/opt/rp/bin/rpsafe.sh /usr/local/opt/rp/bin/rpsafe
sudo mv /usr/local/opt/rp/bin/rp.sh /usr/local/opt/rp/bin/rp
sudo mv /usr/local/opt/rp/bin/rpn.sh /usr/local/opt/rp/bin/rpn
sudo mv /usr/local/opt/rp/bin/rpc.sh /usr/local/opt/rp/bin/rpc
sudo mv /usr/local/opt/rp/bin/rpd.sh /usr/local/opt/rp/bin/rpd
echo Adding executable priviliges
sudo chmod +x /usr/local/opt/rp/bin/rpsafe
sudo chmod +x /usr/local/opt/rp/bin/rp
sudo chmod +x /usr/local/opt/rp/bin/rpc
sudo chmod +x /usr/local/opt/rp/bin/rpn
sudo chmod +x /usr/local/opt/rp/bin/rpd
echo ' ' >> ~/.bash_profile
source ~/.bash_profile
echo '# Setting PATH for random password generator' >> ~.bash_profile
echo 'export PATH="/usr/local/opt/rp/bin:$PATH"' >> ~.bash_profile
echo 'Done! Type rp to start.'