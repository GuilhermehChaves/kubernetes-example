FROM node:alpine

WORKDIR /usr/app
COPY ./package.json ./
RUN npm install
COPY ./ ./
RUN npx tsc

EXPOSE 8080
ENTRYPOINT [ "node", "./dist/index.js" ]