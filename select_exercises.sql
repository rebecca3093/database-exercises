USE codeup_test_db;

SELECT artist, name, release_date, sales, genre
from albums
WHERE artist like 'Pink Floyd';


SELECT artist, name, release_date, sales, genre
from albums
WHERE release_date like '1967';

SELECT artist, name, release_date, sales, genre
from albums
WHERE name like 'NeverMind';

SELECT artist, name, release_date, sales, genre
from albums
WHERE release_date > '1990' < '2000';

SELECT artist, name, release_date, sales, genre
from albums
WHERE release_date < '1990';

SELECT artist, name, release_date, sales, genre
from albums
WHERE sales < '20';

SELECT artist, name, release_date, sales, genre
from albums
WHERE genre like 'Rock';

