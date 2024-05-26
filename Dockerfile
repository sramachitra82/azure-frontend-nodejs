FROM node:21-alpine

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

COPY . .
COPY vite.config.ts /usr/src/app/vite.config.ts

RUN npm run build

EXPOSE 8080

CMD [ "npm", "run", "preview" ]