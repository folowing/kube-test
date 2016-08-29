FROM python:3.5.2-alpine

RUN mkdir -p /var/www && echo "Hello World!" > /var/www/index.html

EXPOSE  8080
ENTRYPOINT cd /var/www && python3 -m http.server --bind 0.0.0.0 8080
