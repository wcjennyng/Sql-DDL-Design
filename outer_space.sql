-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL
  galaxy_id INTEGER REFERENCES galaxies,
);

CREATE TABLE galaxies
(
  id SERIAL PRIMARY KEY,
  galaxy TEXT NOT NULL
);

CREATE TABLE moons
(
  id SERIAL PRIMARY KEY,
  moon TEXT[] 
);

INSERT INTO planets
  (name, orbital_period_in_years, orbits_around, galaxy_id)
VALUES
  ('Earth', 1.00, 'The Sun', 1),
  ('Mars', 1.88, 'The Sun', 1),
  ('Venus', 0.62, 'The Sun', 1),
  ('Neptune', 164.8, 'The Sun', 1);

INSERT INTO galaxies
  (galaxy)
VALUES
  ('Milky Way');
  
INSERT INTO moons
  (moon)
VALUES
  ('{"The Moon"}'),
  ('{"Phobos", "Deimos"}'),
  ('{}'),
  ('{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}');