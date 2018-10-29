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
	-u 1000:1000 \
	kondaurov/pbjs:generator
