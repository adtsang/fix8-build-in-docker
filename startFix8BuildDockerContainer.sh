#!/bin/bash
export DIR=.
cd $DIR
docker build --rm -t fix8-build-ub16os -f $DIR/dockerfile .
docker-compose stop
docker-compose up -d
docker exec -it fix8-build-host /bin/bash
