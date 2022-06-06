#!/usr/bin/sh

mkdir -pv r scripts data
mv *.r r
mv *.sh *.awk scripts
find . -maxdepth 1 -type f -not -name '*.png' -exec mv {} data \;
