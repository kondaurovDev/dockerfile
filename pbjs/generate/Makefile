base_image=node:10.10.0-alpine
image_name=kondaurov/pbjs:generator

build:
	docker build -t ${image_name} -f Dockerfile .

ssh:
	docker run --rm -it --entrypoint=/bin/sh ${image_name}

run:
	docker run --rm \
	-v $(PWD):/project \
	-e PROTO_DIR=/project/example_proto \
	-e TARGET_DIR=/project/target \
	${image_name}