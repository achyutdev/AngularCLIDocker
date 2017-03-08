FROM node:latest

MAINTAINER Achyut Dev

ENV NODE_ENV=production

RUN mkdir -p /var/www/app

WORKDIR /var/www/app

RUN npm  install -g node-gyp
RUN npm  install -g @angular/cli

COPY . /var/www/app
RUN npm install

CMD [ "ng", "serve" ]

EXPOSE 4200
