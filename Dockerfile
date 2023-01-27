FROM node:16.19.0-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci --legacy-deps

COPY . .
RUN npm run build

RUN npm install -g http-server

ENV PORT 8080
EXPOSE $PORT

CMD http-server dist -p "$PORT" -d false
