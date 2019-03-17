include ../../Docker.mk

run_params=\
 -v "${PWD}/entrypoint.sh:/docker-entrypoint.sh" \
 --entrypoint=/docker-entrypoint.sh \
 -p 2222:22

container_name=kondaurov-other-sshd
image_name=kondaurov/other:sshd

start-sshd:
	make exec_cmd cmd="/usr/sbin/sshd -D -d"

cp-keys:
	docker cp ${container_name}:/etc/ssh/ssh_host_dsa_key ${PWD}/keys
	docker cp ${container_name}:/etc/ssh/ssh_host_dsa_key.pub ${PWD}/keys
	docker cp ${container_name}:/etc/ssh/ssh_host_ecdsa_key ${PWD}/keys
	docker cp ${container_name}:/etc/ssh/ssh_host_ed25519_key ${PWD}/keys
	docker cp ${container_name}:/etc/ssh/ssh_host_ed25519_key.pub ${PWD}/keys
	docker cp ${container_name}:/etc/ssh/ssh_host_rsa_key ${PWD}/keys
	docker cp ${container_name}:/etc/ssh/ssh_host_rsa_key.pub ${PWD}/keys

prepare-container:
	docker exec -u dev ${container_name} mkdir /home/dev/.ssh
	docker cp data/keys/. ${container_name}:/etc/ssh/
	docker cp data/authorized_keys ${container_name}:/home/dev/.ssh/
	docker exec -u dev ${container_name} chmod 700 -R /home/dev/.ssh
