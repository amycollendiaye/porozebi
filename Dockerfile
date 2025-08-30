FROM node:22-alpine

RUN apk add --no-cache bash

WORKDIR /app

COPY package*.json ./

RUN npm install --save @prisma/client 
RUN npm install --save-dev typescript prisma

COPY . .

EXPOSE 3000

CMD ["node","server.js"]
