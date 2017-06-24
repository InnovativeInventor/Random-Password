# Random-Password
A simple, secure random password generator for Mac designed to be secure and easy to use. This generator picks words from /usr/share/dict/words using data from /dev/random, a word dictionary that is comes preinstalled with macOS.

# Install
Simply download gen.sh and run it by typing into terminal: 
`sh gen.sh`

The only prerequsite for this script is that you are using a relatively recent version of macOS (or OS X).

# Usage
1. Answer the prompts by typing the amount of passwords needed and the amount of random characters you want after each word. 
2. Then, move your mouse around and do other actions on your computer to ensure that enough entropy is generated to prevent /dev/random from blocking. 
3. Your output will come out in a file named randomwords.txt in the directory that you installed it in. to view it, type in:
`sudo nano randomwords.txt`
or navigate to the directory in Finder and your text viewer/editor of choice.

# Contributions
Feel free to contribute and add more features!