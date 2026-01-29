FROM node:25-alpine

ENV TINI_VERSION v0.19.0

ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini

RUN chmod +x /tini

ENTRYPOINT ["/tini", "--"]

EXPOSE 3000

RUN mkdir /app && cown _R node:node /app

WORKDIR /app

USER node 

COPY  --chown=node:node package.json package-lock*.json ./

RUN npm install && npm cache clean --force

COPY --chown=node:node . .

CMD [ "node", "./bin/www" ]