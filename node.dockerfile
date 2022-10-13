FROM ubuntu:18.04
RUN apt-get update && apt-get -y install 
RUN  apt install -y nodejs
RUN apt install -y npm
