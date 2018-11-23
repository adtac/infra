FROM nginx:1.14

COPY nginx.conf /etc/nginx/nginx.conf
COPY conf.d /etc/nginx/conf.d

ENTRYPOINT ["nginx", "-g", "daemon off;"]
