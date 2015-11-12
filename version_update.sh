#!/bin/bash

excluded=($(<excluded_files.txt))



ls | while read filename ; do



if ! [[ " ${excluded[@]} " =~ " $filename " ]] ; then

sed "s/#version[^\n]*/#version `echo $1`/g" `echo $filename`

fi

done

sed "s/#version[^\n]*/#version `echo $1`/g" test_file.txt > test_file.txt
sed "s/#version[^\n]*/#version `echo $1`/g" new_file.txt > new_file.txt
