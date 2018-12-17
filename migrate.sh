#!/bin/bash

mkdir -p images/0 images/1
while read line ;do 
  
  if [ ! -z "${line} " ]; then
    statusTest=$(curl -s -o /dev/null $1/"${line}".jpg -w "%{http_code}") 
    if [ "x${statusTest}" = "x404" ]; then
      echo not found image ${line}.jpg 
      echo ${line} | tee -a images/0/image.csv
    fi
    if [ "x${statusTest}" = "x200" ]; then
      #curl -s $1/"${line}".jpg --output images/"$0${line}".jpg 
      echo ${line}.jpg found.
      echo ${line} | tee -a images/1/image.csv
    fi
  fi
done < $2

