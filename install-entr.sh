#!/usr/bin/env bash

set -e

## Installs the Event Notify Test Runner, which enables us to run arbitrary commands when files change.

rm -rf temp
rm -rf lib
mkdir temp
mkdir lib
cd temp
curl -fSL "http://entrproject.org/code/entr-3.7.tar.gz" -o entr.tar.gz
tar -xvzf entr.tar.gz -C '../lib'
rm -f *.tar.gz
cd ../lib/*entr*
./configure
make
make test
make install
rm -r ../../temp
