FROM node:12-buster@sha256:ce791f92b445f8968c6739fff3bb88c1eaf139513158e6be65a48087388648cb

COPY /package*.json /

RUN npm ci

COPY /index.js /index.js

ARG COMMIT_SHA
ARG DOCKERFILE_PATH=Dockerfile

LABEL org.opencontainers.image.revision=$COMMIT_SHA \
  org.opencontainers.image.source=$DOCKERFILE_PATH

CMD ["node", "index.js"]
