FROM node:20.11.1

WORKDIR /app

RUN npm install -g pnpm

COPY pnpm-lock.yaml ./

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["pnpm", "run", "dev"]