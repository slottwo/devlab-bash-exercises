#!/bin/bash
arr=()
while true
do
    echo -n "New word: "
    read word
    if [ $word = "exit" ]
    then
        break
    fi
    arr+=($word)
    ./exercises/ex9.sh ${arr[@]}
done