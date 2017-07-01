# Random-Password
A simple, secure random password generator for Mac designed to be secure and easy to use. This generator picks words from /usr/share/dict/words using data from /dev/random, a word dictionary that is comes preinstalled with macOS.

# Install
To start, install and run by typing the following command:
`cd && curl -L https://bit.ly/2skLK70 -o ~/install.sh && openssl dgst -SHA256 ~/install.sh`

If the output matches `dcf4c8f5640b9729a15d16215276b5b978e811c99b413dc206a4c1906d32f3ec`, then the SHA256 digest matches the most recent digest. If it does not match, type in the command again. Checking the SHA256 digest ensures that the install file hasn't been tampered with and is not corrupted. This ensures security.

Next, type in `sh ~/install.sh` to run the installer.

The only requsite for this script is that you are using a relatively recent version of macOS (or OS X).

# Usage
To use Random-Password, type one of the following options into Terminal:

 - `rp` to generate a random word followed by however many random characters that you want
 - `rpc` to generate a random string of characters
 - `rpn` to generate a random string of numbers
 - `rpd` to delete your randompassword.txt file
 - `rpsafe` to generate a random, school appropriate, and commonly used words followed by however many characters that you want

1. Answer the prompts by typing the amount of passwords needed and the amount of random characters you want after each word. 
2. Then, move your mouse around and do other actions on your computer to ensure that enough entropy is generated to prevent /dev/random from blocking. 
3. Your output will come out in a file named randompassword.txt in the directory that you installed it in it should automatically open 

You can view the progress of the generator by looking at the progress meter.

# Contributions
Feel free to contribute and add more features!

# 12dict4schools
Safelist.txt was created using Alan Beale's 12 dict project and is intended for school use and other applications that require a dictionary with safe words. You can contribute to 12dict4schools at https://github.com/InnovativeInventor/12dict4schools
