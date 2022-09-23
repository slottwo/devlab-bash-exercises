#!/bin/bash
case $2 in
    +) echo $(($1+$3));;
    -) echo $(($1-$3));;
    x) echo $(($1*$3));;
    /) echo $(($1/$3));;
    *) echo "Bash can't use * as an argument, please use 'x'"
esac