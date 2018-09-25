#### npm

Publish your files to NPM repository

[![](https://images.microbadger.com/badges/image/kondaurov/publish:npm.svg)](https://microbadger.com/images/kondaurov/publish:npm "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/kondaurov/publish:npm.svg)](https://microbadger.com/images/kondaurov/publish:npm "Get your own version badge on microbadger.com")

	docker pull kondaurov/publish:npm
	docker run --rm \
	--net=host \
	-v $(PWD):/project \
	-e PACKAGE_DIR=/project/example_files \
    -e PACKAGE_NAME=my_name \
	-e PACKAGE_SCOPE=my_scope \
	-e PACKAGE_VERSION=1.0.0 \
	-e REPO_LOGIN=admin \
	-e REPO_PASSWORD=admin123 \
	-e REPO_URL=http://localhost:8081/repository/npm-hosted/ \
	kondaurov/publish:npm

Important:
if your directory contains package.json then don't forget this thing: **Last line must be an EMPTY line**

### maven

[![](https://images.microbadger.com/badges/image/kondaurov/publish:maven-resource.svg)](https://microbadger.com/images/kondaurov/publish:maven-resource "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/kondaurov/publish:maven-resource.svg)](https://microbadger.com/images/kondaurov/publish:maven-resource "Get your own version badge on microbadger.com")

Package any directry (as resource) in jar and publish to maven repository

    docker pull kondaurov/publish:maven-resource
	docker run --rm \
	 --net=host \
	 -v $(PWD):/project \
	 -e src_path=/project/example \
	 -e login=admin \
	 -e password=admin123 \
	 -e realm="Sonatype Nexus Repository Manager" \
	 -e repository=http://localhost:8081/repository/maven-snapshots/ \
	 -e project_name=resource \
	 -e org=my_org \
	 -e version=0.0.2 \
	 -e host=localhost \
	 docker pull kondaurov/publish:maven-resource

 *TODO - This image uses sbt for publishing. it's slow, might be good idea to try gradle for that*
