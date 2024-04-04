#!/bin/bash

PACKAGE_JSONS=$(find ./ -name package.json -not -path "*/node_modules/*")
PACKAGE_DIRS=$(dirname "$PACKAGE_JSONS")
echo "package dirs: $PACKAGE_DIRS"
for i in $PACKAGE_DIRS; do
	(cd "$i" && make clean && make package)
done
