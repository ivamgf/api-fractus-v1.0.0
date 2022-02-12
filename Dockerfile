FROM node:12-alpine

WORKDIR /usr/app

COPY package.json ./

RUN npm install

RUN cat package.json

EXPOSE 1337 ##

CMD npm start
