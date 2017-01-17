#!/bin/bash -x

APORTS="/home/ubuntu/alpine/aports/main"
PACKAGES="packages.txt"
CURRENT=`pwd`

for package in $(cat $PACKAGES);
do
	cd $APORTS/$package
	abuild -d
	cd $CURRENT
	../bin/refresh_repo.sh
done
