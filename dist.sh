#!/bin/bash

#The purpose of this script is to launch the cmake/build process for the whole oscap process.  
#The outputs from ${OSCAP_CONTENT_BASE}/build are then copied into the dist directory for check-in
#This script for now assumes that the content repos is setup 1 level above the current directory in a directory named 'content'
cd dist
cmake ../content/build/
make -j4
