#!/bin/bash
echo Welcome to the random password assistor created by InnovativeInventor
echo This is version 3
echo "This now uses safelist.txt for a safe list of commonly used words."
echo "Fetching newest copy of dictionary list"
cd ~/Random-Password && sudo git submodule sync
cd /usr/local/opt/Random-Password && sudo git submodule sync 
cd
sudo cp /usr/local/opt/Random-Password/bin/12dict4schools/safedict.txt /usr/local/opt/Random-Password/bin/safedict.txt
echo
echo Please type in the amount of random passwords that you need
read number
echo
foo=$number
echo "Generating random stuff..."
echo Please do some other things on this computer to generate entropy
echo "Your output will come out in a file named randomwords.txt in this directory."
echo
echo "Type in the number of random characters that you want after your word:"
read char

# y/n option for leetspeak
echo
echo 'Type y/n if you want to use leetspeak. Check the readme to learn more.'
read leetspeak

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
    if ((totalif > 40990)); then
      echo "Uncommon error, self-correcting..."
    else
      word=`sed -n "$totalif p" /usr/local/opt/Random-Password/bin/safedict.txt`
      randomsymbols=$(LC_ALL=C tr -dc '0-9!@#$%^&*()_+-=<>/?.' </dev/random | head -c $char)
      word=$(echo $word | sed 's/^0*//')
      randomsymbols=$(echo $randomsymbols | sed 's/[[:space:]]//g')
      word=$(echo $word | sed 's/[[:space:]]//g')
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
      echo "$word$randomsymbols" >> randompassword.txt
      let COUNTER-=1
    fi
  else
    finishnumberelse=$(
    LC_ALL=C tr -dc '0-9' </dev/random | head -c 4
    )
    finalnumberelse=$(echo $finishnumberelse | sed 's/^0*//')
    totalelse=$(( firstnumber*10000+finalnumberelse ))
    word=`sed -n "$totalelse p" /usr/local/opt/Random-Password/bin/safedict.txt`
    randomsymbols=$(LC_ALL=C tr -dc '0-9!@#$%^&*()_+-=<>/?.' </dev/random | head -c $char)
    word=$(echo $word | sed 's/^0*//')
    randomsymbols=$(echo $randomsymbols | sed 's/[[:space:]]//g')
    word=$(echo $word | sed 's/[[:space:]]//g')
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
    echo "$word$randomsymbols" >> randompassword.txt
    let COUNTER-=1
  fi
  progress=$((number-COUNTER))
  echo Progress: "$progress/$number"
done
echo
echo "Done! Check randompassword.txt. It should be opening. . ."
echo
open -a "TextEdit" randompassword.txt