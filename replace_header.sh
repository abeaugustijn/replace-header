#!/bin/bash

if [ -z "$1" ]
then
	echo "Usage: ./replace_header.sh [filename]"
	exit 1
fi

if ! [ -f $1 ]; then
	echo "Invalid file: $1"
	exit 1
fi

sed -i 's/        :::      ::::::::/        ::::::::         /g' $1
sed -i 's/      :+:      :+:    :+:/      :+:    :+:         /g' $1
sed -i 's/    +:+ +:+         +:+  /     +:+                 /g' $1
sed -i 's/  +#+  +:+       +#+     /    +#+                  /g' $1
sed -i 's/+#+#+#+#+#+   +#+        /   +#+                   /g' $1
sed -i 's/     #+#    #+#          / #+#   #+#               /g' $1
sed -i 's/    ###   ########.fr    / ########   odam.nl      /g' $1
