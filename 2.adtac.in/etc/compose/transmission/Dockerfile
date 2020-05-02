FROM alpine:latest

RUN apk add --no-cache transmission-daemon transmission-cli

COPY settings.json /etc/transmission/

CMD ["/bin/sh", "-c", "/usr/bin/transmission-daemon -c /var/transmission/watch -w /var/transmission/dl -a *.*.*.* -g /var/transmission/data -g /etc/transmission -f -T"]
