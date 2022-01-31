FROM certbot/certbot:v1.22.0

LABEL maintainer="pdpxpd@gmail.com"

RUN apk update
RUN apk add bind-tools bash
