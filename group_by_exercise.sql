SELECT DISTINCT title FROM titles
ORDER BY title;

SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
GROUP BY first_name, last_name;

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' AND (last_name NOT LIKE '%qu%');