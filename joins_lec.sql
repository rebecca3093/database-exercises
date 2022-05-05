CREATE DATABASE IF NOT EXISTS fortran_db;
USE fortran_db;

CREATE TABLE IF NOT EXISTS teams
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS players
(
    id            INT UNSIGNED     NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name    VARCHAR(255)     NOT NULL,
    last_name     VARCHAR(255)     NOT NULL,
    jersey_number INT UNSIGNED     NOT NULL,
    is_active     TINYINT UNSIGNED NOT NULL,
    team_id       INT UNSIGNED,
    FOREIGN KEY (team_id) REFERENCES teams (id)
);

CREATE TABLE IF NOT EXISTS positions
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    position CHAR(2)
);

CREATE TABLE IF NOT EXISTS player_position
(
    player_id   INT UNSIGNED NOT NULL,
    position_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (player_id) REFERENCES players (id),
    FOREIGN KEY (position_id) REFERENCES positions (id)
);

INSERT INTO teams (city, name)
VALUES ('Arlington', 'Texas Rangers'),
       ('Houston', 'Astros'),
       ('Los Angeles', 'Dodgers'),
       ('Washington', 'Nationals'),
       ('San Fransisco', 'Giants'),
       ('Boston', 'Red Sox'),
       ('Cleveland', 'Guardians');


INSERT INTO players(FIRST_NAME, LAST_NAME, JERSEY_NUMBER, is_active, TEAM_ID)
VALUES ('Corey', 'Seager', 5, 1, 1),
       ('Luis', 'Garcia', 77, 1, 2),
       ('Kenny', 'Powers', 28, 1, NULL);

INSERT INTO positions (position)
VALUES ('SS'),
       ('2B'),
       ('P'),
       ('C'),
       ('RF'),
       ('CF'),
       ('LF');

INSERT INTO player_position
VALUES (1, 1),
       (2, 3),
       (3, 3);


# WHAT WE WANT
# GET PLAYER AND TEAM NAME FOR EACH PLAYER THAT HAS A TEAM ASSOC

SELECT CONCAT(p.first_name, ' ', p.last_name) AS Player,
       t.name                                 AS TEAM
#FROM WHERE
FROM players AS p
#MAKE CONNECTION BETWEEN TABLES
         JOIN teams AS t on p.team_id = t.id;

SELECT CONCAT(p.first_name, ' ', p.last_name) AS Player,
       t.name                                 AS TEAM
#FROM WHERE
FROM players AS p
#MAKE CONNECTION BETWEEN TABLES
         LEFT JOIN teams AS t on p.team_id = t.id;

SELECT CONCAT(p.first_name, ' ', p.last_name) AS Player,
       t.name                                 AS TEAM
#FROM WHERE
FROM players AS p
#MAKE CONNECTION BETWEEN TABLES
         RIGHT JOIN teams AS t on p.team_id = t.id;



# GET PLAYER AND POSITION

SELECT CONCAT(p.first_name, ' ', p.last_name) AS Player,
       pos.position AS Position
FROM players as p
JOIN player_position AS pp ON p.id = pp.player_id
JOIN positions AS pos ON pp.position_id = pos.id;


