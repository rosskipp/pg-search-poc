-- Install the pg_trgm extension for trigram similarity searching
CREATE EXTENSION pg_trgm;

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


-- create a tsvector colum for searching that uses the company, programming language, and api name
ALTER TABLE metadata ADD COLUMN ts tsvector
    GENERATED ALWAYS AS (to_tsvector('english', company || ' ' || programming_language || ' ' || api_name)) STORED;