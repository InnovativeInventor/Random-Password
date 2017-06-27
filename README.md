# Random-Password
A simple, secure random password generator for Mac designed to be secure and easy to use. This generator picks words from /usr/share/dict/words using data from /dev/random, a word dictionary that is comes preinstalled with macOS.

# Install
First download install.sh and run it by typing into terminal: 
`sh install.sh`

Then, you can optionally calculate the checksum of the file by typing in
`openssl dgst -SHA256 install.sh`
The SHA256 (Secure Hash Algorithm) checksum should be `e492d9919c1ea069663f43df49902af405d6384092c2855031122203aeee7f1d`
This ensures that the script hasn't been tampered with and it isn't corrupt. 

The only requsite for this script is that you are using a relatively recent version of macOS (or OS X).

# Usage

To start, install by typing the following command:
`cd && curl -L https://git.io/vQnNE -o ~/install.sh && sh install.sh`

Then, choose one of the following options:

 - `rp` to generate a random word followed by however many random characters that you want
 - `rpc` to generate a random string of characters
 - `rpn` to generate a random string of numbers
 - `rpd` to delete your randompassword.txt file
 - `rpsafe` to generate a random, school appropriate word followed by however many characters that you want.

 Note: `rpsafe` is currently not working, please use it only when this message is removed.

1. Answer the prompts by typing the amount of passwords needed and the amount of random characters you want after each word. 
2. Then, move your mouse around and do other actions on your computer to ensure that enough entropy is generated to prevent /dev/random from blocking. 
3. Your output will come out in a file named randompassword.txt in the directory that you installed it in it should automatically open 

You can view the progress of the generator by looking at the progress meter.

# Contributions
Feel free to contribute and add more features!

# 12dict4schools
Safelist.txt was created using Alan Beale's 12 dict project and is intended for school use and other applications that require a dictionary with safe words. You can contribute to 12dict4schools at https://github.com/InnovativeInventor/12dict4schools
