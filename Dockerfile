FROM node:12-buster

COPY /package*.json /

RUN npm ci

COPY /index.js /index.js

ARG COMMIT_SHA
ARG DOCKERFILE_PATH=Dockerfile

LABEL org.opencontainers.image.revision=$COMMIT_SHA \
  org.opencontainers.image.source=$DOCKERFILE_PATH

CMD ["node", "index.js"]
