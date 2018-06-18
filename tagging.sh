#!/bin/bash

#get highest tag number
CURRENT_TAG=`git describe --abbrev=0 --tags`

#replace . with space so can split into an array
CURRENT_TAG_BITS=(${CURRENT_TAG//./ })

#get number parts and increase last one by 1
VNUM1=${CURRENT_TAG_BITS[0]}
VNUM2=${CURRENT_TAG_BITS[1]}
VNUM3=${CURRENT_TAG_BITS[2]}
VNUM4=${CURRENT_TAG_BITS[3]}
VNUM4=$((VNUM4+1))

#create new tag
NEW_TAG="$VNUM1.$VNUM2.$VNUM3.$VNUM4"

echo "Deploying $NEW_TAG version"

git config --global user.email "denimar@gmail.com"
git config --global user.name "denimar"
git tag -a $NEW_TAG -m 'my version $NEW_TAG' && git push origin --tags