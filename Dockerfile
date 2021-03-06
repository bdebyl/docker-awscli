FROM alpine:3.12
MAINTAINER Bastian de Byl <bastian@bdebyl.net>

# aws-cli dependencies: groff, less
RUN apk --update add \
    python3 \
    py3-pip \
    groff \
    less \
    && pip install --no-cache-dir awscli

RUN apk --purge del py-pip && \
    rm /var/cache/apk/*

VOLUME ["/src"]
WORKDIR /src

ENTRYPOINT ["aws"]
