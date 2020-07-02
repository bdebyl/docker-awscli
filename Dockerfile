FROM alpine:3.12
MAINTAINER Bastian de Byl <bastian@bdebyl.net>

# aws-cli dependencies: groff, less
RUN apk -v --update add python py-pip groff less imagemagick && \
    pip install --no-cache-dir awscli==1.16

RUN apk -v --purge del py-pip && \
    rm /var/cache/apk/*

VOLUME /src
WORKDIR /src

ENTRYPOINT ["aws"]