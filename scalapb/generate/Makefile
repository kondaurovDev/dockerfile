base_image=kondaurov/scalapb:deps
image_name=kondaurov/scalapb:generator

build:
	docker build -t ${image_name} .

build_clean:
	docker build -t ${image_name} .

ssh:
	docker run --rm -it \
	 -v $(PWD):/project \
	 --entrypoint=/bin/sh \
	 -e PROTO_DIR=/project/example_proto \
	 -e SCALA_OUT=/project/target \
	 -e SCALA_OPTS=flat_package \
	 ${image_name}

generate_scala:
	docker run --rm \
	 -v $(PWD):/project \
	 -e PROTO_DIR=/project/example_proto \
	 -e SCALA_OUT=/project/target \
	 -e SCALA_OPTS=flat_package \
	 ${image_name}