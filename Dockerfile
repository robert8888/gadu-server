FROM node:14

ARG NODE_ENV_ARG=prod
ENV NODE_ENV=$NODE_ENV_ARG
ENV PORT=3000

WORKDIR /usr/app

COPY package*.json ./
RUN npm i

COPY . .

RUN npm run build

EXPOSE 3000

CMD npm run ${NODE_ENV}