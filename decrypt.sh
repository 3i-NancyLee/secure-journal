#!/bin/bash

if [ -z "$1" ]; then
    echo "Please provide a file to decrypt!"
    exit 1
fi

source=$1
target=$source

if [[ "${target##*.}" == "encrypted" ]]; then
  target=${target%.encrypted}
  echo $target
else
  target="${source}.original"
  echo $target
fi

command="openssl aes256 -d -iter 100000 -salt -in ${source} -out ${target}"
eval $command

