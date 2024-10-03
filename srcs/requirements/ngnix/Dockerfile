FROM debian:11.0

RUN apt-get update && apt-get install -y nginx

COPY config/nginx.conf /etc/nginx/nginx.conf
COPY tools/ssl /etc/nginx/ssl

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]