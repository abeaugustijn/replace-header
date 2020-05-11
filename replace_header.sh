#!/bin/bash

usage() {
	echo "Usage: ./replace_header.sh [filename]"
	echo "Reading a list filenames from stdin is also possible"
}

replace() {
	if ! [ -f $1 ]; then
		echo "Invalid file: $1"
		return
	fi

	sed -i 's/        :::      ::::::::/        ::::::::         /g' $1
	sed -i 's/      :+:      :+:    :+:/      :+:    :+:         /g' $1
	sed -i 's/    +:+ +:+         +:+  /     +:+                 /g' $1
	sed -i 's/  +#+  +:+       +#+     /    +#+                  /g' $1
	sed -i 's/+#+#+#+#+#+   +#+        /   +#+                   /g' $1
	sed -i 's/     #+#    #+#          / #+#   #+#               /g' $1
	sed -i 's/    ###   ########.fr    / #######    odam.nl      /g' $1
}

if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
	usage
	exit 0
fi

if [ "$1" == "" ]
then
	while read line
	do
		replace "$line"
	done < "/dev/stdin"
else
	replace "$1"
fi
