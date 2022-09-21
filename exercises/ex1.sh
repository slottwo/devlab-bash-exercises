#!/bin/bash
hi=$1
if [ $2 -gt $1 ]
then
    hi=$2
fi
echo "Higher number: $hi"
echo "Sum: $(($1+$2))"