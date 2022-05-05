use fortran_db;


# GET ALL PLAYERS FOR SPECIFIC TEAM BY THE TEAM NAME
SELECT CONCAT(p.first_name, ' ', p.last_name)
FROM players as p
WHERE team_id IN(
    SELECT id
    FROM teams
    WHERE name LIKE '%Rangers%'
    );

#GET ALL PLAYERS FOR A SPECIFIC POSITION

SELECT CONCAT(p.first_name, ' ', p.last_name)
FROM players p
WHERE id IN (
    SELECT player_id
    FROM player_position
    WHERE position_id IN (
        SELECT id
        FROM positions
        WHere position = 'P'
        )
    );


INSERT INTO players (first_name, last_name, jersey_number, is_active, team_id)
VALUES('Cody', 'Duck', 13, 1,(
    Select id FROM teams WHERE name = 'Astros'
    ));

UPDATE players
SET team_id = (SELECT id from teams WHere name = 'Nationals')
WHERE first_name = 'Codey';


