#!/bin/bash
echo -n "$1 "
if [ -e $1 ]
then
    if [ -f $1 ]
    then
        echo "exists and has `du -b $1 | cut -f1` bytes."
    else
        echo "not is a file."
    fi
else
    echo "not exists."
fi