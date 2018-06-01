#!/bin/bash
####################################
# Docker mongo DB 컨테이너 스크립트
####################################
docker run -d \
--name mongodb \
--restart=always \
-p 27017:27017 \
mongo
