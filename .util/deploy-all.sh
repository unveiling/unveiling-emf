#!/bin/bash

while IFS=' ' read -r version profile
do
    echo -e "Version: $version, Profile: $profile" ;
    properties="-P ${profile}"

    jenv exec mvn versions:set -DnewVersion=${version} -DautoVersionSubmodules=true ${properties}
    jenv exec mvn -f unveiling-emf-repackaged tycho-versions:set-version -D newVersion=${version} ${properties}
    jenv exec mvn -f unveiling-emf-repackaged tycho-versions:update-eclipse-metadata ${properties}
    jenv exec mvn clean install ${properties}
    jenv exec mvn clean deploy ${properties}
done
