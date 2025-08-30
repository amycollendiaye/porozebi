FROM node:22-alpine

RUN apk add --no-cache bash

WORKDIR /app

COPY package*.json ./

COPY . .

EXPOSE 3000

CMD ["node","server.js"]
