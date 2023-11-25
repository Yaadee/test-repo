# Dockerfile

FROM node:16.20.2

WORKDIR /dockerapp

COPY package*.json ./
RUN npm install

COPY . .

ENV PORT=20
EXPOSE 20

CMD ["npm", "run", "start"]
