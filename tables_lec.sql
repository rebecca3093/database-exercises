CREATE DATABASE if not exists codeup_test_db;

CREATE TABLE IF NOT EXISTS users

(
    id  INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    email  VARCHAR(255) NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    PRIMARY KEY (id)

    );