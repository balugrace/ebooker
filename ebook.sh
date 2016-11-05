#!/bin/bash
#run from command line
IFS=$'\n'
#Only newline character set as delineater so that whitespaces will not cause trouble.

read -p "Input directory: " directory
# Input directory read from the user.

cd $directory
mkdir mobi
#Serves as the output directory

ext=mobi
#output format extension

for file in ./*

do
  if [ -f "$file" ]
  then
    file1=$(basename -s epub "$file")
    #filename extracted of e-book

    newName=$(echo ${file1}${ext})
    #Output filename defined (This fixes the output format too)

    ebook-convert ./$file ./mobi/$newName

  fi
done
