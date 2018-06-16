FROM node:8
WORKDIR /server01
COPY package.json /server01
RUN npm install
COPY . /server01
CMD node index.js
EXPOSE 8080