#!/bin/bash
echo "Renaming .txt files"
files=(`ls -l | grep ".txt$" | tr -s ' ' | cut -d' ' -f9`)
for f in ${files[@]}
do
    mv $f "`cat $f | cut -d' ' -f1`.txt"
done
