#!/bin/bash

baseDir="."
readarray -d '' arr < <(find "${baseDir}" -mindepth 1 -maxdepth 1 -type d -print0 | sort -z)

for x in ${arr[@]}; do
  cleandir=`echo $x | cut -c 3-`
  echo "================================================="
  echo ${cleandir}
  cd ${cleandir}
  git status -s
  cd ..
done
exit

