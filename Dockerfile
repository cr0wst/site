FROM node:18-alpine

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci --omit dev

COPY build ./build

EXPOSE 3000

CMD ["node", "build"]