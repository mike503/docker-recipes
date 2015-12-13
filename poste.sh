#!/bin/bash

# TODO - only pull if needed or once in a while?
docker pull analogic/poste.io:latest

# ref: https://poste.io/open
docker run \
-d \
--name=poste \
--restart=unless-stopped \
-p 25:25 \
-p 80:80 \
-p 110:110 \
-p 143:143 \
-p 443:443 \
-p 465:465 \
-p 587:587 \
-p 993:993 \
-p 995:995 \
-v /srv/docker/poste/data:/data \
-t analogic/poste.io:latest
