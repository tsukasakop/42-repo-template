#!/bin/bash

DIRNAME=${1:-ex}

echo "init $DIRNAME"
mkdir -p "./$DIRNAME/vendor/ft" "./$DIRNAME/vendor/piscine"


if [ "$2" ]
then
  echo "set $(basename $2)"
  cp "$2" "./$DIRNAME/vendor/ft/"
fi
