#!/bin/sh

path=/home/arinal/pictures/wallpapers/active/

while true; do
  files=$(ls $path)
  for file in $files; do
    echo $path$file
    swww img $path$file --transition-type random
    sleep $1
  done
done
