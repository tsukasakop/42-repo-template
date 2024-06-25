#!/bin/bash

for d in $(ls | grep ex)
do
  echo "---- Run $d --------------------"
  cd $d
  go mod init $(basename $PWD)
  go run .
  cd ..
done
