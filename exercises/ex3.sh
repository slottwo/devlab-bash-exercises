#!/bin/bash
cd $1
list=`ls -la | tr -s ' ' | cut -d' ' -f9`
for i in $list
do
    echo -n $i
    # l=$(ls -l | grep $i)
    # if [ ${l:0:1} = 'd' ]
    if [ -d $i ]
    then
        echo -n " (dir)"
    fi
    echo
done