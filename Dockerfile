FROM node:12.16.3-alpine3.11

COPY . /home/node/app/

WORKDIR /home/node/app/

RUN npm i