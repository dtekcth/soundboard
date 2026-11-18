FROM node:26-alpine@sha256:6bd9ab43c0ec0190ca7b2d193906cb8b7edf6e7f4afa43ddeccd6452710bffb5 AS build

WORKDIR /app

COPY package*.json ./
RUN npm ci --legacy-deps

COPY . .
RUN npm run build

FROM nginx:1.31.9-alpine@sha256:0713660ff64e819a478be0d69ae314e52d21623c93672edd9f381a6e66fd95ff
COPY --from=build /app/dist /usr/share/nginx/html
