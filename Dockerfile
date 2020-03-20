FROM linuxserver/plex:latest
MAINTAINER Kyle Kimsey

RUN apt-get update -y &&\
  apt-get -y install python3.8 python3-pip &&\
  yes | pip3 install virtualenv --quiet --no-cache-dir &&\
  mkdir /config/python38-env &&\
  virtualenv -p python3.8 /config/python38-env &&\
  source /config/python38-env/bin/activate &&\
  yes | pip3 install flask
