#!/bin/bash

ARCHETYPE_METADATA_FILE=src/main/resources/META-INF/maven/archetype-metadata.xml


sed -i '' -e "s/[.0-9]*-SNAPSHOT/${1}/g" ${ARCHETYPE_METADATA_FILE}