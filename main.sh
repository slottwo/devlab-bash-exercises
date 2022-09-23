#!/bin/bash

while :;
do
  # Exercise selection
  read -p 'Select one of thirteen scripts to run. [0=quit/1-13] ' option

  if [[ $option =~ ^[0-9]+$ ]]; then
    if [[ $option == 0 ]]; then
      echo Exiting...
      exit
    fi
    echo Problem $1:
    cat statements/stat$option
    # Generic execution
    ./exercises/ex$option'.sh'
  else
    echo Invalid number, try again.
    continue
  fi
  
  # Exit
  read -p 'Continue? [Y/n] ' quit

  case $quit in
    n|N) exit ;;
    *) continue ;;
  esac
done

