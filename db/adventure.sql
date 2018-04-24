DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS monsters;


CREATE TABLE monsters
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) not null,
  species VARCHAR(255) not null,
  type VARCHAR(255) not null,
  known BOOLEAN not null,
  image VARCHAR(255),
  description VARCHAR(5000)
);

CREATE TABLE players
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) not null,
  class VARCHAR(255) not null,
  image VARCHAR(255),
  description VARCHAR(5000)
);

CREATE TABLE items
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) not null,
  player_id INT REFERENCES players(id) ON DELETE CASCADE,
  monster_id INT REFERENCES monsters(id) ON DELETE CASCADE,
  pc_owned BOOLEAN,
  image VARCHAR(255),
  description VARCHAR(500)
);
