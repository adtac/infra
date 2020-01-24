FROM nginx:1.14

COPY nginx.conf /etc/nginx/
COPY nginx.d local* /etc/nginx/nginx.d/

ENTRYPOINT ["nginx", "-g", "daemon off;"]
