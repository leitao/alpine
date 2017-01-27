#!/bin/bash

REPOP="http://sid.ltc.br.ibm.com/scratch/native/main/ppc64le/APKINDEX.tar.gz"
REPOX="http://alpinelinux.c3sl.ufpr.br/v3.5/main/x86_64/APKINDEX.tar.gz"

wget $REPOP

tar -xvzf APKINDEX.tar.gz

cat  APKINDEX | grep P: | cut -d: -f 2 > powerpackages.txt

rm -fr APKINDEX.tar.gz

wget $REPOX

tar -xvzf APKINDEX.tar.gz

cat  APKINDEX | grep P: | cut -d: -f 2 > xpackages.txt

sort -o powerpackages.txt powerpackages.txt
sort -o xpackages.txt xpackages.txt

diff -uNp powerpackages.txt xpackages.txt > diff.txt

cat diff.txt  | grep ^+  | cut -d+ -f 2

rm -fr APKINDEX*
rm -fr DESCRIPTION
rm -fr diff.txt xpackages.txt powerpackages.txt
