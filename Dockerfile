 FROM nginx
 RUN apt-get update && apt-get upgrade -y
 COPY web/* /usr/share/nginx/html/.
 CMD ["nginx", "-g", "daemon off;"]
