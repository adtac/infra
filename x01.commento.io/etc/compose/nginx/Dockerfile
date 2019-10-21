FROM nginx:1.14

COPY nginx.conf /etc/nginx/nginx.conf
COPY nginx.d /etc/nginx/nginx.d

ENTRYPOINT ["nginx", "-g", "daemon off;"]
