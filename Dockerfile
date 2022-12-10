FROM node:18 as client

WORKDIR /app/client

COPY client /app/client

RUN npm install

RUN npm run build

FROM node:18

WORKDIR /app

COPY server /app

RUN npm install

COPY --from=client /app/client/build /app/client

EXPOSE 8080

CMD [ "npm", "start" ]