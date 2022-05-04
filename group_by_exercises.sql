USE employees;

SELECT DISTINCT first_name
FROM employees;

SELECT first_name
FROM employees
GROUP BY first_name;

SELECT last_name, first_name
FROM employees
GROUP BY last_name, first_name;

SELECT COUNT(*) FROM employees;

SELECT COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%';

SELECT first_name, COUNT(first_name)
FROM employees
WHERE first_name NOT LIKE '%a%'
GROUP BY first_name;




# 1.
SELECT DISTINCT title FROM titles;

# 2 & 3

SELECT e.last_name, e.first_name FROM employees e
WHERE e.last_name like 'E%'
  AND e.last_name LIKE '%E'
GROUP BY e.last_name, e.first_name;

# 4.

SELECT e.last_name from employees e
WHERE e.last_name LIKE '%q%'
AND e.last_name NOT LIKE '%qu%'
GROUP BY e.last_name;

# 5 & 6

SELECT COUNT(*) , e.last_name FROM employees e
WHERE e.last_name LIKE '%q%'
  AND e.last_name NOT LIKE '%qu%'
GROUP BY e.last_name;

# 7.

SELECT COUNT(*), e.gender
FROM employees e
WHERE (e.first_name = 'Irena'
     OR  e.first_name = 'Vidya'
     OR e.first_name = 'Maya')
GROUP BY e.gender;

