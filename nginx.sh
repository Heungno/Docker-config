#!/bin/bash
####################################
# Docker nginx 컨테이너 스크립트    #
####################################
docker run \
--name nginx \
--restart=always \
-p 80:80 -d \
-v /home/docker/nginx/html:/usr/share/nginx/html \
-v /home/docker/nginx/conf:/etc/nginx/conf.d \
-v /home/docker/nginx/logs:/var/log/nginx \
nginx
