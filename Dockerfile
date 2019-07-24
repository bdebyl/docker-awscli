FROM alpine:3.10
MAINTAINER Bastian de Byl <bastian@bdebyl.net>

# aws-cli dependencies: groff, less
RUN apk -v --update add python py-pip groff less && \
    pip install --no-cache-dir awscli==1.16

RUN apk -v --purge del py-pip && \
    rm /var/cache/apk/*

ENTRYPOINT ["aws"]
