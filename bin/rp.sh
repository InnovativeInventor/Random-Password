#!/bin/bash
echo Welcome to the random password assistor created by InnovativeInventor
echo This is version 3
echo "This now uses your Mac's word list at /usr/share/dict/words. It has 235886 entries."
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

# y/n option for leetspeak
echo
echo 'Type y/n if you want to use leetspeak. Check the readme to learn more.'
read leetspeak

echo

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
    finalnumberif=$(echo $finishnumberif | sed 's/^0*//')
    totalif=$(( firstnumber*100000+firstnumberif*10000+finalnumberif ))
    if ((totalif > 235886)); then
      echo "Uncommon error:number generated is too large, self-correcting. Please count the amount of passwords to ensure proper self-correction"
    else
      word=`sed -n "$totalif p" /usr/share/dict/words`
      randomsymbols=$(LC_ALL=C tr -dc '0-9!@#$%^&*()_+-=<>/?.' </dev/random | head -c $char)

      if [ "$leetspeak" = y ]; then
          # Replace letter e randomly
          randome=$(
          LC_ALL=C tr -dc '0-2' </dev/urandom | head -c 1
          )
          if ((randome == 0)); then
            word=$(
            echo "$word" | sed 's/e/3/' | sed 's/E/3/'
            )
          fi

          # Replace letter o randomly
          randome=$(
          LC_ALL=C tr -dc '0-2' </dev/urandom | head -c 1
          )
          if ((randome == 0)); then
            word=$(
            echo "$word" | sed 's/o/0/' | sed 's/O/0/'
            )
          fi

          # Capitalize letter t randomly
          randome=$(
          LC_ALL=C tr -dc '0-2' </dev/urandom | head -c 1
          )
          if ((randome == 0)); then
            word=$(
            echo "$word" | sed 's/t/T/'
            )
          fi

          # Change letter a randomly
          randome=$(
          LC_ALL=C tr -dc '0-2' </dev/urandom | head -c 1
          )
          if ((randome == 0)); then
          word=$(
          echo "$word" | sed 's/a/@/'
          )
          elif ((randome == 1)); then
          word=$(
          echo "$word" | sed 's/a/A/'
          )
          fi
      fi
    fi
    # Echoing to text
    echo $word$randomsymbols >> randompassword.txt
  else
    finishnumberelse=$(
    LC_ALL=C tr -dc '0-9' </dev/random | head -c 5
    )
    finalnumberelse=$(echo $finishnumberelse | sed 's/^0*//')
    totalelse=$(( firstnumber*100000+finalnumberelse ))
    word=`sed -n "$totalelse p" /usr/share/dict/words`
    randomsymbols=$(LC_ALL=C tr -dc '0-9!@#$%^&*()_+-=<>/?.' </dev/random | head -c $char)

    if [ "$leetspeak" = y ]; then
        # Replace letter e randomly
        randome=$(
        LC_ALL=C tr -dc '0-2' </dev/urandom | head -c 1
        )
        if ((randome == 0)); then
          word=$(
          echo "$word" | sed 's/e/3/' | sed 's/E/3/'
          )
        fi

        # Replace letter o randomly
        randome=$(
        LC_ALL=C tr -dc '0-2' </dev/urandom | head -c 1
        )
        if ((randome == 0)); then
          word=$(
          echo "$word" | sed 's/o/0/' | sed 's/O/0/'
          )
        fi

        # Capitalize letter t randomly
        randome=$(
        LC_ALL=C tr -dc '0-2' </dev/urandom | head -c 1
        )
        if ((randome == 0)); then
          word=$(
          echo "$word" | sed 's/t/T/'
          )
        fi
        
        # Change letter a randomly
        randome=$(
        LC_ALL=C tr -dc '0-2' </dev/urandom | head -c 1
        )
        if ((randome == 0)); then
        word=$(
        echo "$word" | sed 's/a/@/'
        )
        elif ((randome == 1)); then
        word=$(
        echo "$word" | sed 's/a/A/'
        )
        fi
    fi

  # Echoing to text  
  echo $word$randomsymbols >> randompassword.txt
  let COUNTER-=1
  progress=$((number-COUNTER))
  echo Progress: "$progress/$number"
  fi
done
echo
echo "Done! Check randompassword.txt. It should be opening. . ."
echo
open -a "TextEdit" randompassword.txt
