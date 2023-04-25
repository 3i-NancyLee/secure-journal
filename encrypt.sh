#!/bin/bash

if [ -z "$1" ]; then
    echo "Please provide a file to be encrypted!"
    exit 1
fi

source=$1
target="${source}.encrypted"

command="openssl aes256 -e -iter 100000 -salt -in ${source} -out ${target}"
eval $command

if [[ $? == 0 ]]; then
        shred ${source} && rm -f ${source}
fi

