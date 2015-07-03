#!/bin/bash

mkdir -p downloads

cd downloads

http://cran.r-project.org/src/contrib/MASS_7.3-42.tar.gz

for pkg in MASS_7.3-42.tar.gz ; do
	[ -f $pkg ] || curl -O http://cran.r-project.org/src/contrib/$pkg
done

cd ..

sudo docker build -t hbp/r-jdbc-mass .
