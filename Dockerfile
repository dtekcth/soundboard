FROM node:lts-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run lint && npm run build

RUN npm install -g http-server

ENV PORT 8000
EXPOSE $PORT

CMD http-server dist -p "$PORT" -d false -i false
