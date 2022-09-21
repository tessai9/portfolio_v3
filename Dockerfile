FROM node:18.9.0-slim

WORKDIR /app

RUN apt-get update && \
    apt-get upgrade -y

COPY . /app

RUN npm install

CMD npm run astro dev

EXPOSE 3000
