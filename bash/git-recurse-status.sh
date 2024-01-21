#!/bin/bash

# Clear the screen
clear
# Write to the /tmp directory. We are assuming Linux.
FILENAME='/tmp/git-recurse-status.sh.tmp'
OUTPUT=''
baseDir="."
readarray -d '' arr < <(find "${baseDir}" -mindepth 1 -maxdepth 1 -type d -print0 | sort -z)

echo "$(date)" > $FILENAME

for x in "${arr[@]}"; do
  cleandir=$(echo $x | cut -c 3-) >> $FILENAME
  # echo ${cleardir}
  echo "=================================================" >> $FILENAME
  OUTPUT="${OUTPUT}${cleandir}|"
  echo ${cleandir} >> $FILENAME 
  cd ${cleandir}
  # redirect git status with any included parms to the file; same for stderr
  git status $1 >>$FILENAME 2>&1 
  cd ..
done

# Temporary means of doing this; need to wildcard on 'On branch' string
sed -i 's/On branch main//g' $FILENAME
sed -i 's/On branch master//g' $FILENAME
sed -i '/^$/d' $FILENAME
cat $FILENAME
echo $OUTPUT
