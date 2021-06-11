-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE person
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL
  seat TEXT NOT NULL
  airline TEXT NOT NULL
)

CREATE TABLE leaving
(
  id SERIAL PRIMARY KEY
  departure TIMESTAMP NOT NULL,
  from_city TEXT NOT NULL,
  from_country TEXT NOT NULL
)

CREATE TABLE arriving
(
  id SERIAL PRIMARY KEY
  arrival TIMESTAMP NOT NULL,
  to_city TEXT NOT NULL,
  to_country TEXT NOT NULL
)



INSERT INTO person
  (first_name, last_name, seat, airline)
VALUES
  ('Jennifer', 'Finch', '33B',  'United'),
  ('Thadeus', 'Gathercoal', '8A','British Airways'),
  ('Sonja', 'Pauley', '12F','Delta'),
  ('Jennifer', 'Finch', '20A',  'Delta');

INSERT INTO leaving
  (departure, from_city, from_country)
VALUES
  ('2018-04-08 09:00:00', 'Washington DC', 'United States'),
  ('2018-12-19 12:45:00','Tokyo', 'Japan'),
  ('2018-01-02 07:00:00', 'Los Angeles', 'United States'),
  ('2018-04-15 16:50:00', 'Seattle', 'United States');
  
INSERT INTO arriving
  (arrival, to_city, to_country)
VALUES 
  ('2018-04-08 12:00:00', 'Seattle', 'United States'),
  ('2018-12-19 16:15:00', 'London', 'United Kingdom'),
  ('2018-01-02 08:03:00', 'Las Vegas', 'United States'),
  ('2018-04-15 21:00:00', 'Mexico City', 'Mexico');