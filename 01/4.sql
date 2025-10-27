CREATE EXTENSION IF NOT EXISTS postgis;

DROP SCHEMA IF EXISTS cw2_schema CASCADE;
CREATE SCHEMA cw2_schema;

-- ustawiamy domyślny schemat dla sesij
SET search_path TO cw2_schema, public;


CREATE TABLE buildings (
  id SERIAL PRIMARY KEY,
  geometry geometry(POLYGON) NOT NULL,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE roads (
  id SERIAL PRIMARY KEY,
  geometry geometry(POLYGON) NOT NULL,
  name VARCHAR(100) NOT NULL
);

CREATE TABLE poi (
  id SERIAL PRIMARY KEY,
  geometry geometry(POLYGON) NOT NULL,
  name VARCHAR(100) NOT NULL
);

