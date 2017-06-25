#!/bin/bash
echo Welcome to the random password assistor created by InnovativeInventor
echo This is version 3
echo "This now uses safelist.txt for a safe list of commonly used words. There are 41196 words in safelist"
echo
echo Please type in the amount of random passwords that you need
read number
echo
foo=$number
echo Generating random stuff
echo Please do some other things on this computer to generate entropy
echo Your output will come out in a file named randomwords.txt in this directory
echo
echo Type in the number of random characters that you want after your word
read char
echo

COUNTER=$foo
until [ $COUNTER -lt 1 ]; do

  firstnumber=$(
  LC_ALL=C tr -dc '0-4' </dev/random | head -c 1
  )

  if ((firstnumber == 4)); then
    firstnumberif=$(
    LC_ALL=C tr -dc '0-1' </dev/random | head -c 1
    )
    finishnumberif=$(
    LC_ALL=C tr -dc '0-9' </dev/random | head -c 3
    )
    finalnumberif=$(echo $finishnumberif | sed 's/^0*//')
    totalif=$(( firstnumber*10000+firstnumberif*1000+finalnumberif ))
    if ((totalif > 41196)); then
      echo "Uncommon error, self-correcting"
    else
      word=`sed -n "$totalif p" safedict.txt`
      randomsymbols=$(LC_ALL=C tr -dc '0-9!@#$%^&*()_+-=<>/?.' </dev/random | head -c $char)
      word=$(echo $word | sed 's/^0*//')
      randomsymbols=$(echo $randomsymbols | sed 's/^0*//')
      printf "$word+$randomsymbols\n"
      echo $word
      echo $randomsymbols
      echo $word$randomsymbols >> randomwords.txt
      let COUNTER-=1
    fi
  else
    finishnumberelse=$(
    LC_ALL=C tr -dc '0-9' </dev/random | head -c 4
    )
    finalnumberelse=$(echo $finishnumberelse | sed 's/^0*//')
    totalelse=$(( firstnumber*10000+finalnumberelse ))
    word=`sed -n "$totalelse p" safedict.txt`
    randomsymbols=$(LC_ALL=C tr -dc '0-9!@#$%^&*()_+-=<>/?.' </dev/random | head -c $char)
    word=$(echo $word | sed 's/^0*//')
    randomsymbols=$(echo $randomsymbols | sed 's/^0*//')
    printf "$word+$randomsymbols \n"
    echo $word
    echo $randomsymbols
    echo $word$randomsymbols >> randomwords.txt
    let COUNTER-=1
  fi
  progress=$((number-COUNTER))
  #echo Progress: "$progress/$number\r\c"
done
echo
echo "Done! Check randomwords.txt. It should be opening. . ."
echo
open -a "TextEdit" randomwords.txt