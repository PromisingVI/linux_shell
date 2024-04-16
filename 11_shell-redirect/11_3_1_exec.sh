#! /bin/bash -

if [ $# -lt 1 ]; then
	echo "Usage: $0 filepath"
	exit
fi

file=$1

exec 3< $file

while read -u 3 line
do
	echo $line
	read -n 1
done

exec 3<&-