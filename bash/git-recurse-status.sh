#!/bin/bash

clear
FILENAME='/tmp/.git-recurse-status.sh.tmp'
# OUTPUT=''
baseDir="."
readarray -d '' arr < <(find "${baseDir}" -mindepth 1 -maxdepth 1 -type d -print0 | sort -z)

echo "" > $FILENAME

for x in "${arr[@]}"; do
  cleandir=`echo $x | cut -c 3-` >> $FILENAME
  echo "=================================================" >> $FILENAME
  OUTPUT="${OUTPUT}====================="
  echo ${cleandir} >> $FILENAME 
  cd ${cleandir}
  git status $1 >> $FILENAME 
  cd ..
done

# Temporary means of doing this; need to wildcard on 'On branch' string
sed -i 's/On branch main//g' $FILENAME
sed -i 's/On branch master//g' $FILENAME
sed -i '/^$/d' $FILENAME
cat $FILENAME
