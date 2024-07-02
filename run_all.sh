#!/bin/bash

for d in $(ls | grep -E 'ex[0-9]+')
do
  echo "---- Run $d --------------------"
  cd $d
  go mod init $(basename $PWD)
  go run .
  cd ..
done
