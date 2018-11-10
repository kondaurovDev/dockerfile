image_name=kondaurov/other:pdftk

build:
	docker build -t ${image_name} - < Dockerfile

ssh:
	docker run --rm -it --entrypoint=/bin/sh ${image_name}

run:
	docker run --rm \
		-v $(PWD):/files \
		${image_name} \
		/files/example/three_page.pdf cat 2-3 output /files/target/outfile.pdf