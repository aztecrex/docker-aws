FROM alpine:3.3

MAINTAINER CJ Engineering


# Basics
#  pip - awscli is Python app
#  curl - to fetch tarballs and stuff
#  bash - for scripts
RUN  apk update \
  && apk upgrade \
  && apk add curl bash py-pip \
  && rm -rf /var/cache/apk/*

