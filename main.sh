#!/bin/bash

while :; do
  # Exercise selection
  read -p 'Select one of thirteen scripts to run. [0=quit/1-13] ' option

  case $option in
  ^[0-9]+$)
    echo
    echo 'Problem $option:'
    cat statements/stat$option
    echo

    case $option in
    0)
      echo 'Exiting...'
      exit
      ;;
    1 | 3 | 4 | 7 | 9 | 11)
      read -p 'Input: ' input
      echo 'Output:'
      ./exercises/ex$option.sh $input
      ;;
    2 | 5 | 6 | 8 | 10 | 13)
      echo 'Output:'
      ./exercises/ex$option.sh
      ;;
    *)
      echo 'Invalid number (> 13), try again.'
      continue
      ;;
    esac
    ;;
  *)
    echo 'Invalid option, try again.'
    continue
    ;;
  esac

  # Exit
  read -p 'Continue? [Y/n] ' quit

  case $quit in
  n | N) exit ;;
  *) continue ;;
  esac
done
