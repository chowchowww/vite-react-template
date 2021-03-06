FROM node:16-alpine

RUN mkdir /app
WORKDIR /app

COPY package.json .

RUN yarn

COPY . .

EXPOSE 8080

CMD [ "yarn", "dev" ]
