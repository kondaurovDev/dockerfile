image_name=kondaurov/other:nginx

build:
	docker build -t ${image_name} .

run:
	docker run \
	 --rm \
	  -v $(PWD)/example:/list-dir \
	  -p 8085:80 \
	  ${image_name}

ssh:
	docker run -it --rm --entrypoint=/bin/sh ${image_name}
