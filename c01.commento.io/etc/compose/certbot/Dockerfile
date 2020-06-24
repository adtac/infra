FROM alpine:latest

RUN apk update && \
    apk add --no-cache \
      gcc libressl-dev musl-dev libffi-dev \
      python3 python3-dev \
      ca-certificates
RUN pip install --no-cache-dir certbot certbot-dns-google
RUN apk del gcc

COPY certs-renew /usr/bin/certs-renew

ENTRYPOINT [ "/bin/sh", "/usr/bin/certs-renew" ]
