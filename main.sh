#!/bin/bash

while :;
do
  # Interface
  read -p 'Select one of thirteen scripts to run. [1-13] ' option

  if ! [[ option =~ '^[0-9]+$' ]]; then
    echo Error: $option is not a number.
    continue
  fi

  # prototype

  # run='./exercises/ex'$option'.sh'
  # cat statement.txt # | grep
  # $run

  read -p 'Continue? [Y/n] ' quit
  case $quit in
    n|N) exit ;;
    *) continue ;;
  esac
done

