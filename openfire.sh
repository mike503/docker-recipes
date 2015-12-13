#!/bin/bash

# TODO - only pull if needed or once in a while?
docker pull sameersbn/openfire

# ref: https://hub.docker.com/r/sameersbn/openfire/
docker run \
-d \
--restart=unless-stopped \
--name openfire \
-p 5222:5222 \
-p 5223:5223 \
-p 5229:5229 \
-p 5269:5269 \
-p 7070:7070 \
-p 7443:7443 \
-p 7777:7777 \
-p 9090:9090 \
-p 9091:9091 \
-v /srv/docker/openfire:/var/lib/openfire \
sameersbn/openfire
