image_name=kondaurov/gradle-scala:2.12

build:
	docker build -t ${image_name} -f Dockerfile .

ssh:
	docker run \
	    --rm -it \
        --entrypoint=/bin/sh \
        -v $(PWD)/example_src:/home/gradle/src/main/scala \
        ${image_name}

run:
	docker run --rm \
	-v $(PWD):/project \
	-e PROTO_DIR=/project/example_proto \
	-e TARGET_DIR=/project/target \
	-u 1000:1000 \
	${image_name}