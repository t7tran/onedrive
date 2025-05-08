FROM alpine:edge

RUN addgroup -g 1000 alpine && adduser -u 1000 -s /bin/sh -D -G alpine alpine && \
    apk add --no-cache  bash curl openssl \
                        onedrive

USER alpine

ENTRYPOINT ["/usr/bin/onedrive"]