FROM alpine:latest

RUN apk update && apk add nginx fcgiwrap cgit

COPY nginx.conf /etc/nginx/nginx.conf
COPY cgitrc /etc/cgitrc
COPY init /usr/local/bin/init

ENTRYPOINT ["/usr/local/bin/init"]
