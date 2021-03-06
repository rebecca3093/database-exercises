USE employees;

/*PART ONE*/

SELECT *
FROM employees a
WHERE a.first_name IN ('Irena', 'Vidya', 'Maya');

SELECT *
FROM employees a
WHERE a.last_name like ('E%');

SELECT *
FROM employees a
WHERE a.last_name like ('%Q%');

/*PART TWO*/

SELECT *
FROM employees
WHERE (first_name = 'Irena' OR
       first_name = 'Vidya' OR
       first_name = 'Maya')
  AND gender = 'M';

SELECT *
FROM employees a
WHERE a.last_name like ('%E%');


SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE '%E%';


SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';