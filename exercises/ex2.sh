#!/bin/bash
echo -n "Enter the target username: "
read NAME
if [ $(grep -c "^$NAME:" /etc/passwd) -gt 0 ]
then
    echo "User exists."
else
    echo "User don't exist."
fi