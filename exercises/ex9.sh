#!/bin/bash
arr=($@)
IFS=$'\n' s=(`sort <<<"${arr[*]}"`); unset IFS
printf "%s\n" "${s[@]}"
