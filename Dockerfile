ARG NODE_VERSION=13.1.0

FROM node:$NODE_VERSION-alpine

LABEL MAINTAINER=<ops@newsletter2go.com>

RUN npm install -g json-server

COPY .docker/ /

EXPOSE 3000

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["json-server"]
