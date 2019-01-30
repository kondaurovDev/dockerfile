image=kondaurov/dev:scala
container=kondaurov-scala-dev

build:
	docker build -t ${image}  .

run:
	docker run -i -d --rm \
		--name=${container} \
		${image}
	make attach

attach:
	docker exec -it ${container} /bin/bash

stop:
	docker stop -t 1 ${container}