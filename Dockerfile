FROM node:12.14.1-slim

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json ./

COPY yarn.lock ./

RUN yarn install

COPY . .

EXPOSE 1337

CMD ["yarn", "dev"]
