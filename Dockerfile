FROM node:latest

ENV DB_PASSWORD=Sup3rS3cr3t!

ADD https://example.com/app.tar.gz /app/

WORKDIR /app
COPY package.json .
RUN npm install
COPY . .

EXPOSE 3000
CMD ["node", "app.js"]
