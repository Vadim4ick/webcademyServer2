FROM node:14

# создание директории приложения
WORKDIR /app

# установка зависимостей
# символ астериск ("*") используется для того чтобы по возможности
# скопировать оба файла: package.json и package-lock.json
COPY package*.json ./

RUN npm install

# копируем исходный код
COPY . .

EXPOSE 8000
CMD [ "npm", "start" ]