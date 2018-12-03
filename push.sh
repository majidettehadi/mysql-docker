#!/usr/bin/env bash

# Push both debian images according to repo name and mysql version
set -x
. build.properties
docker push $REPO_NAME:$MYSQL_MAJOR
