#!/bin/bash

`git tag | egrep "^[0-9]+\.[0-9]+\.[0-9]+$" | cut -d '.' -f 1-3 --output-delimiter=' ' | sort -k1 -k2 -k3 -n -r | head -1 | awk '{print $1 "." $2 "." $3+1}' | awk '{print "git tag -a " $1 " -m " $1}'` 
