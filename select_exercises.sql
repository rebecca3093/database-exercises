USE codeup_test_db;

SELECT *
from albums
WHERE artist like 'Pink Floyd';

SELECT release_date
FROM albums a
WHERE a.name like 'Sgt. Pepper%';

SELECT genre
from albums a
WHERE a.name like 'NeverMind';

SELECT *
from albums a
WHERE a.release_date BETWEEN 1989 AND 1999;

SELECT *
from albums
WHERE sales < 20.0;

SELECT *
from albums a
WHERE genre like 'rock';

