#!/usr/bin/env bash

# Read arg from build.properties

set -x
. build.properties
docker build --force-rm  \
    -t $REPO_NAME:$MYSQL_MAJOR $MYSQL_MAJOR
