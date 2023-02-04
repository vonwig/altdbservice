FROM node:12-buster

COPY /package*.json /

RUN npm ci

COPY /index.js /index.js

CMD ["node", "index.js"]
