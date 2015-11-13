#!/bin/bash

excluded=$(<excluded_files.txt)

tempfile="temp.tmp.$$"

ls | while read filename ; do

case "$excluded" in

	*"$filename"* );;

	*)
		sed "s/#version[^\n]*/#version `echo $1`/g" "$filename" > $tempfile
		mv $tempfile "$filename"
		;;

esac

rm -f $tempfile

done

