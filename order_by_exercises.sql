SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M'
ORDER BY first_name, last_name;
/* SELECT last_name FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%-12-25';
-- SELECT birth_date FROM employees WHERE birth_date LIKE  '%-12-25';
SELECT * FROM employees WHERE last_name LIKE '%q%' AND (last_name NOT LIKE '%qu%'); */
