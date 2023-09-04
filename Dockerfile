# Use an official NGINX image as the base image
FROM ubuntu
RUN apt-get update && \
    apt-get install -y -q curl gnupg2
RUN curl http://nginx.org/keys/nginx_signing.key | apt-key add -

RUN apt-get update && \
    apt-get install -y -q nginx

COPY ./website/ /usr/share/nginx/html/
EXPOSE 443 80
ADD start.sh /
ENTRYPOINT ["/bin/bash", "/start.sh"]
