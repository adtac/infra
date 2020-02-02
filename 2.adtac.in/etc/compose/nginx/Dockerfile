FROM debian:buster

RUN apt-get update && apt-get install -y nginx nginx-full nginx-common libnginx-mod-http-dav-ext

COPY nginx.conf /etc/nginx/
COPY nginx.d local* /etc/nginx/nginx.d/

ENTRYPOINT ["nginx", "-g", "daemon off;"]
