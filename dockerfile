FROM node:22

WORKDIR /app

COPY src ./src
COPY package.json .

RUN npm install

EXPOSE 3000

CMD ["node", "src/server.js"]