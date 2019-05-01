FROM alpine:latest

RUN apk add --no-cache nginx fcgiwrap cgit

COPY nginx.conf /etc/nginx/nginx.conf
COPY cgitrc /etc/cgitrc
COPY init /usr/local/bin/init

ENTRYPOINT ["/usr/local/bin/init"]
