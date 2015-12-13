#!/bin/bash

# TODO - only pull if needed or once in a while?
# there is an official redmine one now, but it looks a little too limited.
docker pull sameersbn/redmine:latest

docker run \
-d \
--name=redmine \
--restart=unless-stopped \
-v /srv/docker/redmine/redmine:/home/redmine/data \
--env='DB_TYPE=mysql' \
--env='DB_HOST=[HOST]' \
--env='DB_NAME=[DB]' \
--env='DB_USER=[USER]' \
--env='DB_PASS=[PASSWORD]' \
sameersbn/redmine
