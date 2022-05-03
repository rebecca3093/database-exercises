USE codeup_test_db;

UPDATE albums
SET sales = sales * 10.0;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson'
SELECT * FROM albums;

START TRANSACTION;

Delete FROM albums a WHERE a.release_date >1991;

DELETE FROM albums a WHERE a.genre LIKE '%disco%';

DELETE FROM albums a WHERE a.artist = 'Whitney Houston';

SELECT * from albums;

ROLLBACK;


