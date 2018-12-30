image_name=kondaurov/other:dind-ubuntu

build:
	docker build -t ${image_name} .

run:
	docker run \
	 --rm \
	  ${image_name}

attach:
	docker run -it --rm \
		--entrypoint=/bin/sh \
		--mount type=bind,src=/var/run/docker.sock,dst=/var/run/docker.sock \
		 ${image_name}
