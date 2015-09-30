#!/bin/bash

# fetch newest updates in repo
# determine if files have been modified since last read
# for each modified file: call python scriptt 

COMMIT_FILE="../.commit"



if [ ! -d $GIT_REPO] ; then
	#TODO clone repo
fi


pushd git > /dev/null

# Look for updates
git pull

# determine changed files since last run
if [ -e $COMMIT_FILE ] ; then
	commit_tail="$(<$COMMIT_FILE)"
	changed_files=($(git diff --name-only $commit_tail HEAD))
else
	changed_files=($(git ls-tree -r master --name-only))
fi

# run markdown on each changed file
for i in "${changed_files[@]}"
do
	   :
	   echo $i #Call markdown with this file as parameter
      done

# save pointer to latest parsed commit
git rev-parse HEAD > $COMMIT_FILE
popd > /dev/null 


