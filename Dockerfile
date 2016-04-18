FROM alpine:3.3

MAINTAINER CJ Engineering


# Basics
#  python - awscli is Python app
#  pip - install the awscli, gets removed
#  curl - to fetch tarballs and stuff
#  bash - for scripts
#  awscli
RUN  apk update \
  && apk upgrade \
  && apk add curl bash py-pip \
  && pip install awscli \
  && apk --purge -v del py-pip \
  && rm -rf /var/cache/apk/*
