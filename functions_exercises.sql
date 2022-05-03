USE employees;

#Functions:

/*SELECT *
FROM employees e
WHERE (e.first_name = 'Irena' OR
       e.first_name = 'Vidya' OR
       e.first_name = 'Maya')
  AND e.gender = 'M'
ORDER BY  e.last_name, e.first_name;*/

/*SELECT CONCAT( a.first_name, ' ' , a.last_name) AS 'Full Name' FROM employees a
WHERE a.last_name like ('E%')
  AND a.last_name like '%E'
ORDER BY a.emp_no;*/

/*SELECT * FROM employees a
WHERE a.last_name like '%Q%'
  AND a.last_name not like '%qu%'*/

SELECT e.emp_no, DATEDIFF(NOW(), e.hire_date) AS 'DAYS WORKED'
FROM employees e
WHERE (DAY(e.birth_date) = 25 AND MONTH(e.birth_date) = 12)
    AND (YEAR(e.hire_date) > 1989 AND YEAR (e.hire_date) < 2000)
ORDER BY e.birth_date ASC, e.hire_date DESC;

SELECT *
FROM employees e
WHERE (YEAR(e.hire_date) > 1989 AND YEAR(e.hire_date) < 2000);

