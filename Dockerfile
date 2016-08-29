FROM python:3.5.2-alpine

RUN mkdir -p /var/www && echo "Hello World!" > /var/www/index.html

ENTRYPOINT cd /var/www && python3 -m http.server
