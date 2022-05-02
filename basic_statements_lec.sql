USE codeup_test_db;

INSERT INTO users(username, email, first_name, last_name, middle_name)
VALUES ('becca.martinez', 'beccamartinez@email.com', 'Becca', 'Martinez', 'Michelle');

SELECT id, username, email
FROM users;

SELECT *
FROM users
WHERE last_name like 'R%';

UPDATE users
SET last_name = 'Sutton'
WHERE first_name = 'Ry';

