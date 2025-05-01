# Стадия 1: Сборка Vue проекта
FROM node:18 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Стадия 2: Раздача статических файлов через httpd (Apache)
FROM httpd:alpine
COPY --from=build /app/dist /usr/local/apache2/htdocs/
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
EXPOSE 80