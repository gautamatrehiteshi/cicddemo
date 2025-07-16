# Dockerfile
FROM node:22.14.0

WORKDIR /cicd

COPY package*.json ./
RUN npm ci

COPY . .

RUN npm run build

CMD ["node", "dist/main.js"]