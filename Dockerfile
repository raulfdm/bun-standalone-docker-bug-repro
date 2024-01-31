FROM oven/bun:1.0.25-debian

WORKDIR /app

COPY package.json .

RUN bun install

COPY . .

CMD bun run build:app