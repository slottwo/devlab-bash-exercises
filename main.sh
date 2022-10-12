#!/bin/bash

while :; do
  # Exercise selection
  read -p "Select one of thirteen scripts to run. [0=cancel/1-13] " option

  case $option in
  '' | *^[!0-9]*) # If is not a positive integer
    echo "Invalid option, try again."
    continue
    ;;
  *)
    echo
    echo "Problem $option:"
    cat statements/stat$option
    echo

    case $option in
    0)
      echo "Exiting..."
      exit
      ;;
    1 | 3 | 4 | 7 | 9 | 11) # Scripts that need cli arguments
      read -p "Input: " args
      echo "Output:"
      ./exercises/ex$option.sh $args
      ;;
    2 | 5 | 6 | 8 | 10 | 13)
      echo "Output:"
      ./exercises/ex$option.sh
      ;;
    *)
      echo "Invalid number (> 13), try again."
      continue
      ;;
    esac
    ;;
  esac

  # Exit
  read -p "Continue? [Y/n] " quit

  case $quit in
  n | N) exit ;;
  *) continue ;;
  esac
done
