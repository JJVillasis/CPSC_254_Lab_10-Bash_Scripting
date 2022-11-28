#!/bin/bash

#For loop through project directory and displays all files
for i in `find ./project/* -type f -name '*.py' -o -name '*.html' -o -name '*.css'`; do
    echo $(basename $i);
done
