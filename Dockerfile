ARG NODE_VERSION=13.1.0

FROM node:$NODE_VERSION-alpine

ARG JSON_SERVER_VERSION=v0.15.1

LABEL MAINTAINER=<ops@newsletter2go.com>

RUN npm install -g json-server@$JSON_SERVER_VERSION

COPY .docker/ /

EXPOSE 3000

WORKDIR /app

ENTRYPOINT ["/docker-entrypoint.sh"]

CMD ["json-server", "-H", "0.0.0.0", "db.json"]
