FROM alpine:latest

RUN apk update && \
    apk add --no-cache \
      gcc libressl-dev python-dev musl-dev libffi-dev \
      python py-pip \
      ca-certificates
RUN pip install --no-cache-dir certbot certbot-dns-google
RUN apk del gcc

COPY certs-renew /usr/bin/certs-renew

ENTRYPOINT [ "/bin/sh", "/usr/bin/certs-renew" ]
