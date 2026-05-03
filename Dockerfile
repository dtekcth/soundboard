FROM node:25-alpine AS build

WORKDIR /app

COPY package*.json ./
RUN npm ci --legacy-deps

COPY . .
RUN npm run build

FROM nginx:1.30.0-alpine
COPY --from=build /app/dist /usr/share/nginx/html
