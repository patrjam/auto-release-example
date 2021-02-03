FROM node:lts-slim

COPY . /home/node/app/

WORKDIR /home/node/app/

RUN npm ci

CMD /bin/bash -c "npx semantic-release --debug"