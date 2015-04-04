-- Although not explicitly covered in the lesson, aggregate functions like count can be used with join queries.
 -- Use count and the appropriate join type to get a list of roles along with the number of users that has the role. 
 -- Hint: You will also need to use group by in the query.
SELECT count(*), roles.name AS role_name
FROM roles
JOIN users ON users.role_id = roles.id
GROUP BY roles.id;

-- Using the example in the "Associative Table Joins" section as a guide, write a query
-- that shows each department along with the name of the current manager for that department.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS employee_full_name, d.dept_name AS department_name
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';

-- Find the name of  all departments currently managed by women.
SELECT CONCAT(e.first_name, ' ', e.last_name) AS employee_full_name, d.dept_name AS department_name
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
WHERE e.gender = 'F' AND dm.to_date = '9999-01-01';

-- Results:
-- employee_full_name   department_name
-- Leon DasSarma        Development
-- Isamu Legleitner     Finance
-- Karsten Sigstam      Human Resources
-- Hilary Kambil        Research

-- Find the current titles of employees currently working in the Customer Service department
SELECT DISTINCT title
FROM titles AS t
JOIN dept_emp AS de
ON de.emp_no = t.emp_no
WHERE de.to_date = '9999-01-01'
ORDER BY title; 
-- Title                         Count  
-- Assistant Engineer                68
-- Engineer                         627
-- Manager                            1
-- Senior Engineer                 1790
-- Senior Staff                   11268
-- Staff                           3574
-- Technique Leader                 241
-- This is the correct one that also return the counts
SELECT title, count(*)
FROM titles AS t
JOIN dept_emp AS de
ON t.emp_no = de.emp_no
JOIN departments AS d
ON de.dept_no = d.dept_no
WHERE t.to_date = '9999-01-01' AND de.to_date = '9999-01-01' AND d.dept_no = 'd009'
GROUP BY  title;

-- Find the current salary of all current managers

SELECT dept_name, e.first name
FROM departments AS d
JOIN dept_emp AS de
ON d.dept_no = de.dept_no
JOIN dept_manager AS dm
ON de.dept_no = dm.dept_no
JOIN employees AS e
ON e.emp_no = dm.emp_no
WHERE de.to_date = '9999-01-01'
ORDER BY dept_name; 

-- correct
SELECT s.salary, e.first_name, e.last_name, d.dept_no
FROM salaries AS s
JOIN dept_manager AS dm ON s.emp_no = dm.emp_no
JOIN employees AS e ON e.emp_no = s.emp_no
JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE s.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';
-- 



SELECT e.first_name, e.last_name, d.dept_name, m.first_name, m.last_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
JOIN dept_manager AS dm ON dm.dept_no = d.dept_no
JOIN employees AS m ON m.emp_no = dm.emp_no
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01';
