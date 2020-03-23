FROM linuxserver/plex:latest
MAINTAINER Kyle Kimsey

RUN apt-get -y update &&\
	apt-get -y install python3 --no-install-recommends &&\
	printenv &&\
	echo ------------------------ &&\
	apt-get -y -qq clean

ENV PUID=1000 \
	PGID=1000 \
	VERSION=docker \
	UMASK_SET=022

CMD ["python3", "/config/python-server/flask-api/api.py"]

EXPOSE 5050
