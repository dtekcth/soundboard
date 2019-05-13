FROM node:lts-alpine

RUN npm install -g http-server
WORKDIR /app

COPY . .

RUN npm ci
RUN npm run build

EXPOSE 8080
CMD [ "http-server", "dist" ]
