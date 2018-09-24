
#### kondaurov/npm:publisher

Publish your files to NPM repository

	docker pull kondaurov/npm:publisher
	docker run --rm \
	--net=host \
	-v $(PWD):/project \
    -e PACKAGE_NAME=my_name \
	-e PACKAGE_SCOPE=my_scope \
	-e PACKAGE_VERSION=1.0.0 \
	-e REPO_LOGIN=admin \
	-e REPO_PASSWORD=admin123 \
	-e REPO_URL=http://localhost:8081/repository/npm-hosted/ \
	-e PACKAGE_DIR=/project/example_files \
	kondaurov/npm:publisher

Important:
if you have package.json with your files then don't forget this thing: **Last line must be an EMPTY line**
