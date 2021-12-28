FROM node:16.8-alpine3.11 

WORKDIR /app

RUN apk --no-cache --virtual build-dependencies add \
    git

RUN git clone https://github.com/louislam/uptime-kuma.git /app
RUN npm run setup

# Option 1. Try it
CMD ["node","server/server.js"]