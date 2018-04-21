DROP TABLE inventory;
DROP TABLE players;
DROP TABLE monsters;


CREATE TABLE monsters
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) not null,
  species VARCHAR(255) not null,
  type VARCHAR(255) not null 
);

CREATE TABLE players
(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) not null,
  class VARCHAR(255) not null,
  inventory VARCHAR(255) not null
);

CREATE TABLE inventory
(
  id SERIAL8 PRIMARY KEY,
  item_id INT,
  owner_id INT REFERENCES players(id) ON DELETE CASCADE
);
