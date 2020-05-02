FROM alpine:latest

RUN apk add --no-cache transmission-daemon transmission-cli

CMD ["/bin/sh", "-c", "/usr/bin/transmission-daemon -c /var/transmission/watch -w /var/transmission/dl -a *.*.*.* -g /var/transmission/data -f -T"]
