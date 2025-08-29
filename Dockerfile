FROM node:16
# creer un  repertoire d'application

WORKDIR /app
# copie tt lespackages et .json
COPY package*.json ./

RUN npm install
# copy tt kles sources de applications
COPY . .
EXPOSE 3000

CMD ["node","server.js"]