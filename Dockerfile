FROM docker/compose:latest

WORKDIR /app

COPY docker-compose.yml .

# Install docker-compose if not available
RUN apk add --no-cache docker-compose

EXPOSE 21115 21116 21117

CMD ["docker-compose", "up"]
