USE employees;

SELECT first_name AS 'First Name', last_name AS 'Last Name', hire_date AS 'Hire Date'
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
);

#ry's walk-thru

SELECT *
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );


SELECT t.title
FROM titles t
WHERE emp_no IN (
    SELECT employees.emp_no
    FROM employees
    WHERE first_name = 'Aamod'
)
GROUP BY t.title;



SELECT e.first_name , e.last_name
FROM employees e
WHERE e.gender = 'F'
  AND e.emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > CURRENT_DATE()
);

SELECT d.dept_name
FROM departments d
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        )
    AND to_date > current_date()
    );

SELECT e.first_name, e.last_name
From employees e WHERE emp_no IN (
    SELECT emp_no from salaries
    Where salary = (SELECT MAX(salary) from salaries)
    );