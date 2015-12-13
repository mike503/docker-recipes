#!/bin/bash

# TODO - only pull if needed or once in a while?
docker pull jrcs/crashplan:latest

# ref: https://hub.docker.com/r/jrcs/crashplan/
docker run \
-d \
--name=crashplan \
--restart=unless-stopped \
-h $HOSTNAME \
-p 4242:4242 \
-p 4243:4243 \
-v /volume1:/volume1 \
-v /volume1/crashplan:/var/crashplan \
jrcs/crashplan:latest

# NOTE: volumes are tuned for synology
