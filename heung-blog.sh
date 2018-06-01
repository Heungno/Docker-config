#!/bin/bash
####################################
# nodeJs app test
####################################
docker run -d \
--name=docker-blog \
--net=host \
--restart=always \
-e VERSION=latest \
-e TZ=Asia/Seoul \
-v /home/heungno/dev/blog/:/usr/src/app \
-v /home/data/vol2/uploads:/usr/src/app/uploads \
-p 3000:3000 \
heung/blog
