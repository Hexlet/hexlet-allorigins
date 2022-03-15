FROM node:16-slim

WORKDIR /app

COPY package.json .
COPY package-lock.json .

ENV NODE_ENV=production
RUN npm ci

COPY . .

CMD ["npm", "start"]
