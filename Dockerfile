FROM node:14.16.0-alpine
RUN apk add --no-cache --virtual .build-deps alpine-sdk python3
RUN mkdir -p /var/www/mailer
WORKDIR /var/www/mailer
ADD . /var/www/mailer
RUN npm install
CMD npm start