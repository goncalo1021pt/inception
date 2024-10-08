FROM debian:oldstable

RUN apt-get update && apt-get install -y nginx && apt-get install -y openssl && apt-get install -y vim && apt-get install systemctl -y
RUN mkdir -p etc/nginx/ssl 
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout etc/nginx/ssl/nginx.key -out etc/nginx/ssl/nginx.crt -subj "/C=PT/ST=LS/L=LS/O=42/OU=42/CN=42.com"
WORKDIR /etc/nginx
COPY config/nginx.conf /etc/nginx/conf.d/default.conf

# EXPOSE 443

# CMD ["nginx", "-g", "daemon off;"]
CMD [ "tail", "-f", "/dev/null" ]