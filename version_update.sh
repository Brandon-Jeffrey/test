#!/bin/bash

excluded=$(<excluded_files.txt)

tempfile="temp.tmp.$$"

ls | while read filename ; do

case "$excluded" in

*"$filename"* );;
*)

#if ! (( $( grep -c "$filename" "$excluded" ) )) ; then

sed "s/#version[^\n]*/#version `echo $1`/g" "$filename" > $tempfile
mv $tempfile "$filename"
#echo $filename 
;;

esac
#fi
rm -f $tempfile

done

