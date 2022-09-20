#!/bin/bash
function count {
    cat /etc/passwd | cut -d':' -f7 | grep -c $1
}
shells=(`cat /etc/passwd | cut -d':' -f7`)
hi=${shells[0]}
for s in ${shells[@]}
do
    if [ `count $s` -gt `count $hi` ]
    then 
        hi=$s
    fi
done
echo "$hi with `count $hi` users"