build:
	docker build --rm -t ${image_name} - < Dockerfile

run:
	docker run -d \
	 ${run_params} \
	 --name=${container_name} \
	 ${image_name}

rm:
	docker rm -f ${container_name}

exec_cmd:
	docker exec ${exec_params} ${container_name} ${cmd}

sh:
	make exec_cmd cmd="/bin/sh" exec_params="-it"

bash:
	make exec_cmd cmd="/bin/bash" exec_params="-it"
