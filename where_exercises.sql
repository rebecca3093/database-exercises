USE employees;

SELECT *
FROM employees a
WHERE a.first_name IN ('Irena', 'Vidya', 'Maya');

SELECT *
FROM employees a
WHERE a.last_name like ('%E%');

SELECT *
from employees a
WHERE a.last_name like ('%Q%');


