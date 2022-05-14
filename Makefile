all:

push:
	docker build -t=stapelberg/docker-samba . && docker push stapelberg/docker-samba
