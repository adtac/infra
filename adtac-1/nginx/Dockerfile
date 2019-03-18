FROM nginx:1.14

COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d /etc/nginx/conf.d
COPY common /etc/nginx/common

ENTRYPOINT ["nginx", "-g", "daemon off;"]
