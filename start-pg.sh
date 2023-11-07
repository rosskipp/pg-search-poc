# Postgres DB Container
docker run \
  --name db \
  -e POSTGRES_USER=ross \
  -e POSTGRES_PASSWORD=abc123 \
  -e POSTGRES_DB=search \
  -p 5432:5432 \
  -d \
  postgres:16-alpine