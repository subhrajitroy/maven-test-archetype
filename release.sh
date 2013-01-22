#!/bin/bash

function usage(){
  echo "usage :"
  echo "RELEASE_VERSION=1.4 DEVELOPMENT_VERSION=1.5-SNAPSHOT ./release.sh"
  exit
}

if [ "help" == "$1" ]; then
   usage
fi


if [ -z "$RELEASE_VERSION" ]; then
  usage
fi

if [ -z "$DEVELOPMENT_VERSION" ]; then
  usage
fi




mvn --batch-mode -Dtag=r-${RELEASE_VERSION} -DreleaseVersion=${RELEASE_VERSION} -DdevelopmentVersion=${DEVELOPMENT_VERSION} release:clean release:prepare release:perform