FROM alpine:3.15.4
MAINTAINER Bastian de Byl <bastian@bdebyl.net>
ENTRYPOINT ["aws"]

# aws-cli dependencies: groff, less
RUN apk --update add \
    python3 \
    py3-pip \
    groff \
    less \
    && pip install --no-cache-dir awscli

RUN apk --purge del py-pip && \
    rm /var/cache/apk/*

WORKDIR /src

VOLUME ["/src"]
