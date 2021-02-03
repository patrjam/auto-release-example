FROM node:lts-slim

ARG NPM_TOKEN

RUN  \
    apt-get update \
    && apt-get install -y python3 make g++ python build-essential libcairo2-dev git

COPY . /home/node/app/

WORKDIR /home/node/app/

RUN npm config set https://registry.npmjs.org/:_authToken" $NPM_TOKEN

RUN npm ci

RUN npm run semantic:release
