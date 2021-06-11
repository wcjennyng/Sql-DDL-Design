-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL
);

CREATE TABLE artists
(
  id SERIAL PRIMARY KEY,
  artist TEXT[] NOT NULL,
  album TEXT NOT NULL
);

CREATE TABLE producers
(
  id SERIAL PRIMARY KEY,
  producer TEXT[] NOT NULL
);

INSERT INTO songs
  (title, duration_in_seconds, release_date)
VALUES
  ('MMMBop', 238, '04-15-1997'),
  ('Bohemian Rhapsody', 355, '10-31-1975'),
  ('One Sweet Day', 282, '11-14-1995');

INSERT INTO artists
  (artists, album)
VALUES
  ('{"Hanson"}', 'Middle of Nowhere'), 
  ('{"Queen"}', 'A Night at the Opera'),
  ('{"Mariah Cary", "Boyz II Men"}', 'Daydream');

INSERT INTO producers
  (producer)
VALUES
  ({"Dust Brothers", "Stephen Lironi"}),
  ({"Roy Thomas Baker"}),
  ('{"Walter Afanasieff"}');