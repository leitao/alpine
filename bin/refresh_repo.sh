#!/bin/bash

cd $HOME/packages/main/ppc64le
rm -fr APKINDEX.tar.gz
apk index --quiet --output APKINDEX.tar.gz --description 'main v3.5.0-698-g2df8989' --rewrite-arch ppc64le *apk
