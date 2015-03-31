SELECT last_name FROM employees WHERE last_name LIKE 'e%' AND last_name LIKE '%e';
SELECT hire_date FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
SELECT birth_date FROM employees WHERE birth_date LIKE  '%-12-25';
SELECT last_name FROM employees WHERE last_name LIKE '%q%'