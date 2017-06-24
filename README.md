# Random-Password
A simple, secure random password generator for Mac designed to be secure and easy to use. This generator picks words from /usr/share/dict/words using data from /dev/random, a word dictionary that is comes preinstalled with macOS.

# Install
First download gen.sh and run it by typing into terminal: 
`sh gen.sh`

Then, you can optionally calculate the checksum of the file by typing in
`openssl dgst -SHA256 gen.sh`
The SHA256 (Secure Hash Algorithm) checksum should be `783161252902474bab9021dc369877d36e1130f04bf8d46d5a724ce5167d8a56`
This ensures that the script hasn't been tampered with and it isn't corrupt. 

The only requsite for this script is that you are using a relatively recent version of macOS (or OS X).

# Usage
1. Answer the prompts by typing the amount of passwords needed and the amount of random characters you want after each word. 
2. Then, move your mouse around and do other actions on your computer to ensure that enough entropy is generated to prevent /dev/random from blocking. 
3. Your output will come out in a file named randomwords.txt in the directory that you installed it in. to view it, type in:
`sudo nano randomwords.txt`
or navigate to the directory in Finder and your text viewer/editor of choice.

You can view the progress of the generator by looking at the progress meter.

# Contributions
Feel free to contribute and add more features!
<<<<<<< HEAD

# 12dict4schools
Safelist.txt was created using Alan Beale's 12 dict project and is intended for school use and other applications that require a dictionary with safe words. You can contribute to 12dict4schools at https://github.com/InnovativeInventor/12dict4schools
=======
>>>>>>> origin/master
