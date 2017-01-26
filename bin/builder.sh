#!/bin/bash

DIR=`pwd`
for i in `ls | tac`
do
	sudo apk update
	cd $i;
	abuild -R
	cd $DIR
done
