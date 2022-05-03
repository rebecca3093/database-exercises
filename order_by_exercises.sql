USE employees;

/*ORDER BY - For Sorting, ordering it to how you
  want to see your data. */

SELECT *
FROM employees e
WHERE (e.first_name = 'Irena' OR
       e.first_name = 'Vidya' OR
       e.first_name = 'Maya')
  AND e.gender = 'M'
ORDER BY  e.last_name, e.first_name;

SELECT * FROM employees a
WHERE a.last_name like ('E%')
AND a.last_name like '%E'
ORDER BY a.emp_no DESC;

SELECT * FROM employees a
WHERE a.last_name like '%Q%'
AND a.last_name not like '%qu%'

