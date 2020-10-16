#!/bin/bash

versions="2.15.0 2.16.0 2.17.0 2.18.0 2.19.0 2.20.0 2.21.0 2.22.0 2.23.0"

# for each in $versions; do
# 	echo "Release version ${each}"
# 	mvn versions:set -DnewVersion=${each} -DautoVersionSubmodules=true
# 	mvn -f unveil-emf-repackaged tycho-versions:set-version -D newVersion=${each}
# 	mvn -f unveil-emf-repackaged tycho-versions:update-eclipse-metadata
# 	mvn clean install
# 	mvn clean deploy
# done

while IFS=' ' read -r version profiles
do
    echo -e "Version: $version, Profiles: $profiles";
done
