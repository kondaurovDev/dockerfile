#!/usr/bin/env sh

set -e

envsubst < "/scripts/build_template" > "build.sbt"

sbt update