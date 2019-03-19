FROM ubuntu:16.04

RUN apt-get update && apt-get -y install sudo
RUN apt-get update && apt-get install -y build-essential
RUN apt-get update && apt-get install -y curl python-software-properties
RUN apt-get update && apt-get install -y apt-transport-https ca-certificates
RUN apt-get update && apt-get install -y software-properties-common
RUN apt-get update && apt-get install -y libtool
RUN apt-get update && apt-get install -y libxml-parser-perl
RUN apt-get update && apt-get install -y zip
RUN apt-get update && apt-get install -y unzip
RUN apt-get update && apt-get install -y vim
RUN apt-get update && apt-get install -y libpoco-doc libpoco-dev
RUN apt-get update && apt-get install -y zlib1g-dev
RUN apt-get update && apt-get install -y autotools-dev
RUN apt-get update && apt-get install -y automake

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
RUN apt-cache policy docker-ce
RUN apt-cache madison docker-ce
RUN apt-get update && apt-get install -y docker-ce

RUN mkdir /home/docker
RUN mkdir /home/docker/fix8-build
WORKDIR /home/docker/fix8-build

#ENTRYPOINT ["/bin/bash"]
CMD tail -f /dev/null
