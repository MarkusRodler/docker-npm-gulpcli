FROM node:9.4-alpine

LABEL maintainer="Markus Rodler"

RUN npm install -g gulp-cli \
    && apk add --quiet --no-cache git \
    && rm -rf /var/cache/apk/* /tmp/*

VOLUME ["/workdir"]
WORKDIR /workdir

CMD ["npm", "-v"]