#!/bin/bash

#Title Heading
echo "======================================================="
echo "= CPSC 254: Group Project - Information Source Finder ="
echo "======================================================="

i=10
until [ $i == 0 ]
do

#Key Guide
echo "============="
echo "= Key Guide ="
echo "============="
echo "0 - Exit"
echo "1 - Introduction"
echo "2 - Display Files"
echo "3 - Credits"

read -p "Input: " i

echo -e

case $i in

#Exit info script
0) echo "Exiting..."
;;

#Display project Description
1)
echo "================"
echo "= Introduction ="
echo "================"
echo "A source finder that will take a search query from the user and runs the query through a search powered by the IEEE Xplore API."
echo "The API will make search requests through the IEEE Xplore database and returns 25 responses to the page in the form of a table."
echo "The user is then allowed to scroll through the results to pick which sources to use."
;;

#Display essential project files
2) 
echo "==================="
echo "= Essential Files ="
echo "==================="
for i in `find ./project/* -type f -name '*.py' -o -name '*.html' -o -name '*.css'`; do
    echo $(basename $i);
done
;;

#Display project group members
3)
echo "==================="
echo "= Project Credits ="
echo "==================="
echo "Jeffrey Nong - jeffreynong@csu.fullerton.edu"
echo "Steven Rico - ricosteven00@csu.fullerton.edu"
echo "Joshua Villasis - JJVillasis@csu.fullerton.edu"
;;

#Unknown key entered
*) echo "ERROR: Unknown Command"
;;
esac

echo -e

done