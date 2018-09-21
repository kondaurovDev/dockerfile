ProtobufJS is a tool for compiling your .proto files into javascript and it generates .d.ts for typescript

#### kondaurov/pbjs:generator

[![](https://images.microbadger.com/badges/image/kondaurov/pbjs:generator.svg)](https://microbadger.com/images/kondaurov/pbjs:publisher "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/kondaurov/pbjs:generator.svg)](https://microbadger.com/images/kondaurov/pbjs:publisher "Get your own version badge on microbadger.com")

Generate js/ts from proto directory.

	docker pull kondaurov/pbjs:generator
	docker run --rm \
	-v $(PWD):/project \
	-e PROTO_DIR=/project/example_proto \
	-e TARGET_DIR=/project/target \
	kondaurov/pbjs:generator

#### kondaurov/pbjs:publisher

[![](https://images.microbadger.com/badges/image/kondaurov/pbjs:publisher.svg)](https://microbadger.com/images/kondaurov/pbjs:publisher "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/kondaurov/pbjs:publisher.svg)](https://microbadger.com/images/kondaurov/pbjs:publisher "Get your own version badge on microbadger.com")

Publish your generated files to NPM repository

	docker pull kondaurov/pbjs:publisher
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
	kondaurov/pbjs:publisher