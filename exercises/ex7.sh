#!/bin/bash
data1=$(date -d "$1" +%s)
data2=$(date -d "$2" +%s)

for ((i=$data1; i<=$data2; i+=86400));
do
	data=$(date -d @$i +%w)
	if [[ $3 =~ $data ]]
then
	echo "$(date -d @$i +%d/%m/%Y)"
fi
done
