#!/bin/bash
even=0
while [ $even -le $1 ]
do
    echo -n $even" "
    even=$(($even+2))
done
echo