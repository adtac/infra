FROM nginx:1.14

COPY nginx.conf nginx.d local* /etc/nginx/

ENTRYPOINT ["nginx", "-g", "daemon off;"]
