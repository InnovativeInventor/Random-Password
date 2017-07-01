#!/bin/bash
echo Installing
# Making directory on computer to move files to
sudo mkdir /usr/local/opt/Random-Password

echo Uninstalling previous versions and downloading

# Deleting previous installs of Random-Password
sudo sh ~/Random-Password/uninstall.sh >> /dev/null

# Recursively cloning from Github
git clone https://github.com/InnovativeInventor/Random-Password --recursive >> /dev/null

# Copying over to the directory created
sudo cp -r ~/Random-Password /usr/local/opt/

# Moving safedict over to be together with all the scripts
sudo cp /usr/local/opt/Random-Password/bin/12dict4schools/safedict.txt /usr/local/opt/Random-Password/bin/safedict.txt

# Removing .sh from executables
sudo mv /usr/local/opt/Random-Password/bin/rpsafe.sh /usr/local/opt/Random-Password/bin/rpsafe
sudo mv /usr/local/opt/Random-Password/bin/rp.sh /usr/local/opt/Random-Password/bin/rp
sudo mv /usr/local/opt/Random-Password/bin/rpn.sh /usr/local/opt/Random-Password/bin/rpn
sudo mv /usr/local/opt/Random-Password/bin/rpc.sh /usr/local/opt/Random-Password/bin/rpc
sudo mv /usr/local/opt/Random-Password/bin/rpd.sh /usr/local/opt/Random-Password/bin/rpd

# Adding executable privileges
sudo chmod +x /usr/local/opt/Random-Password/bin/rpsafe
sudo chmod +x /usr/local/opt/Random-Password/bin/rp
sudo chmod +x /usr/local/opt/Random-Password/bin/rpc
sudo chmod +x /usr/local/opt/Random-Password/bin/rpn
sudo chmod +x /usr/local/opt/Random-Password/bin/rpd

# Adding to bash profile
echo ' ' >> ~/.bash_profile
cp ~/.bash_profile ~/.bash_profile.bac
source ~/.bash_profile
echo '# Setting PATH for random password generator' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/Random-Password/bin:$PATH"' >> ~/.bash_profile
echo 'Done! Type rp to start.'