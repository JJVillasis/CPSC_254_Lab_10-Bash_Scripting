#!/bin/bash

#For loop through project directory and displays all files
for i in `find ./project/* -type f`; do
    echo $(basename $i);
done
