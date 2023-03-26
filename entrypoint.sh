#!/bin/sh -l

./dir2uf2/dir2uf2 --filename $2.uf2 --manifest $1 $3

echo "uf2-file=$2.uf2" >> $GITHUB_OUTPUT
echo "bin-file=$2.bin" >> $GITHUB_OUTPUT
