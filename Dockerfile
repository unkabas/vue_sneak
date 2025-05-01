# Этап сборки
FROM node:18 AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci --production && npm cache clean --force
COPY . .
RUN npm run build

# Этап продакшена
FROM httpd:2.4-alpine
COPY --from=build /app/dist /usr/local/apache2/htdocs/
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
EXPOSE 80