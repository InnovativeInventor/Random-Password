# Random-Password
A simple, secure random password generator for Mac designed to be secure and easy to use. This generator picks words from /usr/share/dict/words using data from /dev/random, a word dictionary that is comes preinstalled with macOS.

# Install
To start, install and run by typing the following command:
`cd && curl -L https://bit.ly/2skLK70 -o ~/install.sh && openssl dgst -SHA256 ~/install.sh`

If the output matches `9514867378a33612e93dd10a1c0e2c58cf50fb5f71054c43f198153425c22bfc`, then the SHA256 digest matches the most recent digest. If it does not match, type in the command again. Checking the SHA256 digest ensures that the install file hasn't been tampered with and is not corrupted. This ensures security.

Next, type in `sh ~/install.sh` to run the installer.

The only requsite for this script is that you are using a relatively recent version of macOS (or OS X).

# Usage
To use Random-Password, type one of the following options into Terminal:

 - `rp` to generate a random word followed by however many random characters that you want
 - `rpsafe` to generate a random, school appropriate, and commonly used words followed by however many characters that you want
 - `rpc` to generate a random string of characters
 - `rpn` to generate a random string of numbers
 - `rpd` to delete your randompassword.txt file

1. Answer the prompts by typing the amount of passwords needed and the amount of random characters you want after each word. 
2. Then, move your mouse around and do other actions on your computer to ensure that enough entropy is generated to prevent /dev/random from blocking. 
3. Your output will automatically open

Before running the command again, be sure to quite TextEdit

You can view the progress of the generator by looking at the progress meter.

# Update
To update, simply run through the installation process again. `install.sh` should run through the uninstall process if there is a copy of Random-Password on your Mac.

# 12dict4schools
Safelist.txt was created using Alan Beale's 12 dict project and is intended for school use and other applications that require a dictionary with safe, non-controversial words. You can contribute to 12dict4schools at https://github.com/InnovativeInventor/12dict4schools
