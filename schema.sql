DROP TABLE IF EXISTS metadata;
DROP SCHEMA IF EXISTS metadata CASCADE;

CREATE SCHEMA IF NOT EXISTS metadata;

CREATE TABLE IF NOT EXISTS metadata (
  id SERIAL PRIMARY KEY,
  api_name TEXT NOT NULL,
  api_version TEXT NOT NULL,
  internal_version INT NOT NULL,
  api_base_url TEXT NOT NULL,
  company TEXT NOT NULL,
  path_to_zip TEXT NOT NULL,
  programming_language TEXT NOT NULL,
  openapi_url TEXT NOT NULL,
  openapi_hash TEXT NOT NULL
);
