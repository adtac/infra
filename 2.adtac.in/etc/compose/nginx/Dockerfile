FROM nginx:1.14

ARG iface
COPY nginx.conf /etc/nginx/
COPY "$iface" /etc/nginx/nginx.d/

ENTRYPOINT ["nginx", "-g", "daemon off;"]
