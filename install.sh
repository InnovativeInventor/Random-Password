#!/bin/bash
echo Installing
mkdir /usr/local/opt/rp
cp bin /usr/local/opt/rp/
chmod +x /usr/local/opt/rp/rpsafe
chmod +x /usr/local/opt/rp/rp
echo ' ' >> ~/.bash_profile
echo '# Setting PATH for random password generator' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/rp/bin:$PATH"' >> ~/.bash_profile
echo 'Done! Type rp to start.'