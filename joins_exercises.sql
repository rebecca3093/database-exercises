USE employees;

# 1.

SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
         JOIN dept_manager DM on e.emp_no = dm.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date > CURDATE();

# 2.
SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Manager Name'
FROM employees as e
         JOIN dept_manager as dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE to_date > NOW()
  AND e.gender = 'F'
ORDER BY dept_name;

# 3.
SELECT t.title AS 'Title', COUNT(*) AS 'Count'
FROM titles AS t
         JOIN employees e ON
    t.emp_no = e.emp_no
         JOIN dept_emp AS de ON
    e.emp_no = de.emp_no
WHERE t.to_date > NOW()
  AND de.to_date > NOW()
  AND dept_no = 'd009'
GROUP BY t.title;

# Ry's Example

/*SELECT t.title as Title,
       cOUNT(t.emp_no)
       FROM titles as t
JOIN emplotees as e ON e.emp_no = t.emp_no
JOIN dep_emp de as e.*/


# 4.
/*SELECT d.dept_name AS Title, COUNT(*) AS Count
FROM dept_manager AS dm
         JOIN departments d ON dm.dept_no = d.dept_no*/


SELECT d.dept_name                            AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary                               as 'Salary'
FROM employees AS e
         JOIN dept_manager DM on e.emp_no = dm.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE dm.to_date > CURDATE()
  AND s.to_date > CURDATE();

#5.

SELECT CONCAT(e2.first_name, ' ', e2.last_name)  AS Employee,
       d.dept_name                             as Department,
       CONCAT(e2.first_name.' ', e2.last_name) AS Manager
FROM employees AS e
         JOIN dep_emp de on e.emp_no = de.emp_no
         JOIN departments d on de.dept_no = d.dept_no
         JOIN dept_manager dm on de.dept_no = dm.dept_no
         JOIN employees e2 on e2.emp_no = dm.emp_no
WHERE de.to_date > CURDATE()
  AND dm.to_date > CURDATE();
