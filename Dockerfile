FROM node:16.20.2

WORKDIR /testdocker

COPY package*.json ./
RUN npm install

COPY . .

ENV PORT=9090
EXPOSE 9090

CMD ["npm", "run", "start"]
