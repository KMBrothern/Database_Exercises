/* SELECT DISTINCT title FROM titles
ORDER BY title; */

SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC
LIMIT 5
OFFSET 45;

/* SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND (last_name NOT LIKE '%qu%'); */
