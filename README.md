# Random-Password
A simple, secure random password generator for Mac designed to be secure and easy to use. This generator picks words from /usr/share/dict/words using data from /dev/random, a word dictionary that is comes preinstalled with macOS.

# Install
First download gen.sh and run it by typing into terminal: 
`sh gen.sh`

Then, you can optionally calculate the checksum of the file by typing in
`openssl dgst -SHA256 gen.sh`
The SHA256 (Secure Hash Algorithm) checksum should be `a4feae2e4c71691528cc87b00e6915c00ea26b405d702ab2c3b58303cea5fa0a`
This ensures that the script hasn't been tampered with and it isn't corrupt. 

The only prerequsite for this script is that you are using a relatively recent version of macOS (or OS X).

# Usage
1. Answer the prompts by typing the amount of passwords needed and the amount of random characters you want after each word. 
2. Then, move your mouse around and do other actions on your computer to ensure that enough entropy is generated to prevent /dev/random from blocking. 
3. Your output will come out in a file named randomwords.txt in the directory that you installed it in. to view it, type in:
`sudo nano randomwords.txt`
or navigate to the directory in Finder and your text viewer/editor of choice.

You can view the progress of the generator by looking at the progress meter.

# Contributions
Feel free to contribute and add more features!