FROM node:lts-bookworm-slim

WORKDIR /app

RUN apt-get update && \
    apt-get upgrade -y

COPY . /app

RUN npm install

CMD npm run astro dev

EXPOSE 3000
