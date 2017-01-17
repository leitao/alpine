#!/bin/bash

cd $HOME/packages/main
apk index --quiet --index APKINDEX.tar.gz --output APKINDEX.tar.gz.12127
--description 'main v3.5.0-698-g2df8989' --rewrite-arch ppc64le *apk
