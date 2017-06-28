#!/bin/bash
echo Welcome to the random password assistor created by InnovativeInventor
echo This is version 3
echo "This now uses your Mac's word list at /usr/share/dict/words. It has 235886 entries."
echo
echo Please type in the amount of random numbers that you need
read foobar
echo
echo Please type in the length of the random number that you need
read foo
echo
COUNTER=$foobar
until [ $COUNTER -lt 1 ]; do
  number=$(LC_ALL=C tr -dc '0-9' </dev/random | head -c $foo)
  echo $number
  echo $number >> randompassword.txt
  let COUNTER-=1
  progress=$((number-COUNTER))
  echo Progress: "$progress/$COUNTER"
done
echo "Done! Check randompassword.txt. It should be opening. . ."
echo
open -a "TextEdit" randompassword.txt
