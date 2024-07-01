#!/bin/bash -e

ORGN_BR=${ORGN_BR:-utils}
SBMT_BR=${SBMT_BR:-submit}

git switch $ORGN_BR 1> /dev/null
hashes=`git log --pretty=format:"%h" --reverse -- **/*.go`
init_hash=`git rev-list $ORGN_BR | tail -1`

if ! git branch | grep " ${SBMT_BR}$" &> /dev/null
then
  git branch $SBMT_BR $init_hash
fi
git switch $SBMT_BR 1> /dev/null

LN=`git rev-list $SBMT_BR | wc -l | sed 's/ //g'`
for h in $hashes
do
  LN=$(($LN - 1))
  if [ $LN -lt 1 ]
  then
    git cherry-pick $h
  fi
done
