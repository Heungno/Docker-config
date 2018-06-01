#!/bin/bash
####################################
# Docker plex 컨테이너 스크립트
####################################
docker run -d \
--name=docker-plex \
--net=host \
--restart=always \
-e VERSION=latest \
-e TZ=Asia/Seoul \
-v /home/docker/plex/config:/config \
-v /home/data:/data \
-p 32400:32400 \
linuxserver/plex
