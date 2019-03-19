# fix8-build-in-docker

Create the project to make non C++ programmer to get it easier to build FIX8 in any operating system and not to bother to get all dependent development tools to install as long as you get docker installed.

## Prerequisite
Install docker on your machine as we will build a docker image to run Ubuntu 16.04 with C++ complier and autoconf/automake/autotool to build FIX8

## Download FIX8 source code and example
http://www.fix8.org/downloads.html

download fix8-1.4.0.tar.gz to the same directory

## Create the build docker image and container by running the following command
```
./startFix8BuildDockerContainer.sh
```

## FIX8 build
### Untar the FIX8 source code inside the docker container
```
tar xvfz fix8-1.4.0.tar.gz
```
### Build FIX8 inside the docker container
```
cd fix8-1.4.0
autoreconf -i
./configure
make
make install
```
