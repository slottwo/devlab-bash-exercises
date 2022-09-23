#!/bin/bash

while :; do
  # Exercise selection
  read -p 'Select one of thirteen scripts to run. [0=quit/1-13] ' option

  if [[ $option =~ ^[0-9]+$ ]]; then
    if [[ $option == 0 ]]; then
      echo Exiting...
      exit
    fi

    echo
    echo "Problem $option:"
    cat statements/stat$option
    echo

    case $option in
    1 | 3 | 4 | 7 | 9 | 11)
      read -p 'Input: ' input
      echo 'Output:'
      ./exercises/ex$option'.sh' $input
      ;;
    *)
      echo 'Output:'
      ./exercises/ex$option'.sh'
      ;;
    esac

  else
    echo Invalid number, try again.
    continue
  fi

  # Exit
  read -p 'Continue? [Y/n] ' quit

  case $quit in
  n | N) exit ;;
  *) continue ;;
  esac
done
