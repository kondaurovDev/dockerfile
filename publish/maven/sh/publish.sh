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

echo "preparing project for publishing..."

mkdir -p /dist/src/main/resources

cd ${src_path} && cp -a ./ /dist/src/main/resources/

cd /dist

cat > build.sbt <<_EOF_
name := "${project_name}"
organization := "${org}"
version := "${version}"
credentials := Seq(Credentials("${realm}", "${host}", "${login}", "${password}"))
publishTo := Some("Maven repo" at "${repository}")
publishArtifact in (Compile, packageDoc) := false
publishArtifact in (Compile, packageSrc) := false
_EOF_

echo "publishing..."

sbt publish
