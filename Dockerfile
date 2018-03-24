FROM nginx:alpine

COPY . /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
HEALTHCHECK CMD curl -f http://localhost:80 || exit 1
EXPOSE 80
