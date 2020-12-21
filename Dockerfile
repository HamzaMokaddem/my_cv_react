FROM node:slim

WORKDIR /usr/src/app

ENV PORT 3000

COPY package.json /usr/src/app

RUN npm install

RUN npm install -g nodemon

COPY . /usr/src/app

EXPOSE 3000
CMD "npm" "dev"