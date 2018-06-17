FROM node:8
ENV HOME=/home/arianioliver
COPY . $HOME/app
WORKDIR $HOME/app
RUN npm install
EXPOSE 8080
CMD node index.js
