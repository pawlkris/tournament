-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

CREATE TABLE players ( id SERIAL PRIMARY KEY,
                       name TEXT);

CREATE TABLE matches ( mid SERIAL PRIMARY KEY,
                       winner INT REFERENCES players(id),
                       loser INT REFERENCES players(id));

CREATE OR REPLACE VIEW STANDINGS AS
    SELECT  id,
            name,
            SUM(CASE WHEN players.id = matches.winner THEN 1 ELSE 0 END) AS wins,
            SUM(CASE WHEN players.id = matches.winner OR players.id = matches.loser THEN 1 ELSE 0 END) AS match_count
    FROM players
    RIGHT JOIN matches
    ON players.id = matches.winner OR players.id = matches.loser
    GROUP BY players.id
    ORDER BY wins DESC,
             match_count ASC;
