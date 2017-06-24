#!/bin/bash
echo Welcome to the random password assistor created by InnovativeInventor
echo This is version 2
echo "This now uses your Mac's word list at /usr/share/dict/words. It has 235886 entries."
echo
echo Please type in the amount of random words that you need
read number
echo
foo=$number
echo Generating random stuff
echo Please do some other things on this computer to generate entropy
echo Your output will come out in a file named randomwords.txt in this directory

COUNTER=$foo
until [ $COUNTER -lt 1 ]; do

  firstnumber=$(
  LC_ALL=C tr -dc '0-2' </dev/random | head -c 1
  )

  if ((firstnumber == 2)); then
    firstnumberif=$(
    LC_ALL=C tr -dc '0-3' </dev/random | head -c 1
    )
    finishnumberif=$(
    LC_ALL=C tr -dc '0-9' </dev/random | head -c 4
    )
    totalif=$(( firstnumber*100000+firstnumberif*10000+finishnumberif ))
    echo $totalif
    awk -v "NR=totalif" /usr/share/dict/words > randomwords.txt
  else
    finishnumberelse=$(
    LC_ALL=C tr -dc '0-9' </dev/random | head -c 5
    )
    totalelse=$(( firstnumber*100000+finishnumberelse ))
    echo $totalelse
    awk -v "NR=totalif" /usr/share/dict/words > randomwords.txt
  fi
  let COUNTER-=1
  
done
