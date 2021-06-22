FROM node:14

ENV NODE_ENV = prod

WORKDIR /usr/app

COPY package*.json ./
RUN npm i

COPY . .

RUN npm run build

EXPOSE 3000

CMD npm run ${NODE_ENV}