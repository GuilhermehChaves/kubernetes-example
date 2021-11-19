FROM node:alpine

WORKDIR /usr/app
COPY ./ ./
RUN npm install
RUN npx tsc

EXPOSE 8080
ENTRYPOINT [ "node", "./dist/index.js" ]