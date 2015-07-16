CREATE TABLE teams (
  id INTEGER PRIMARY KEY,
  name VARCHAR NOT NULL UNIQUE,
  sport VARCHAR NOT NULL
);

CREATE TABLE players (
  id INTEGER PRIMARY KEY,
  name VARCHAR NOT NULL UNIQUE
);

CREATE TABLE positions (
  id INTEGER PRIMARY KEY,
  title VARCHAR NOT NULL,
  jersey_number INTEGER NOT NULL,
  team_id INTEGER NOT NULL,
  player_id INTEGER NOT NULL,
  FOREIGN KEY(team_id) REFERENCES team(id),
  FOREIGN KEY(player_id) REFERENCES player(id)
);