FROM alpine:latest

RUN apk update && \
    apk add --no-cache \
      gcc libressl-dev python-dev musl-dev libffi-dev \
      python py-pip \
      dcron ca-certificates
RUN pip install --no-cache-dir certbot certbot-dns-digitalocean
RUN apk del gcc

COPY crontab /etc/crontabs/root
COPY certs-renew /usr/bin/certs-renew
COPY cron /usr/bin/cron

ENTRYPOINT [ "/bin/sh", "/usr/bin/cron" ]
