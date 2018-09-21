#!/usr/bin/env sh

set -e

#!/usr/bin/env sh

set -e

: "${project_name?Need to set project_name}"
: "${org?Need to set org}"
: "${version?Need to set version}"
: "${realm?Need to set realm}"
: "${host?Need to set host}"
: "${repository?Need to set repository}"
: "${login?Need to set login}"
: "${password?Need to set password}"
: "${src_path?Need to set src_path}"

envsubst < "/scripts/build_template" > "build.sbt"

sbt update