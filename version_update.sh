#!/bin/bash
sed "s/#version[^\n]*/#version `echo $1`/g" test_file.txt > test_file.txt
sed "s/#version[^\n]*/#version `echo $1`/g" new_file.txt > new_file.txt
