FROM node:22-bookworm-slim

RUN apt-get update \
  && apt-get install -y --no-install-recommends unzip \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY SJTUKnow-source.zip /tmp/SJTUKnow-source.zip

RUN unzip -q /tmp/SJTUKnow-source.zip -d /tmp/sjtuknow \
  && cp -a /tmp/sjtuknow/SJTUKnow/. /app/ \
  && npm ci --no-audit --no-fund \
  && npm run build

ENV NODE_ENV=production
EXPOSE 3000

CMD ["sh", "-c", "npm run start -- --hostname 0.0.0.0 --port ${PORT:-3000}"]
