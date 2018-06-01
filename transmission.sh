#!/bin/bash
####################################
# transmission 컨테이너 스크립트
####################################
docker run -d \
--name=docker-transmission \
--restart=always \
-e VERSION=latest \
-v /home/docker/transmission/config:/config \
-v /home/data/vol1/transmission/downloads:/downloads \
-v /home/data/vol1/transmission/watch:/watch \
-e TZ=Asia/Seoul \
-p 9091:9091 -p 51413:51413 \
-p 51413:51413/udp \
linuxserver/transmission
