#!/bin/bash

ARCHETYPE_METADATA_FILE=src/main/resources/META-INF/maven/archetype-metadata.xml


sed -i '' -e "s/[.0-9]*-SNAPSHOT/${1}/g" ${ARCHETYPE_METADATA_FILE}

git add ${ARCHETYPE_METADATA_FILE}

git commit -m"Release|Changed motech version to ${ARCHETYPE_METADATA_FILE}"

mvn release:perform -DconnectionUrl=scm:git:https://github.com/subhrajitroy/maven-test-archetype