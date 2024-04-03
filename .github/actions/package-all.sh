#!/bin/bash


PACKAGE_DIRS=$(dirname `find ./ -name package.json -not -path "*/node_modules/*"`)
echo package dirs: \n $PACKAGE_DIRS
for i in $PACKAGE_DIRS; do
	echo "$i"
	(cd "$i" && make clean && make package)
done
