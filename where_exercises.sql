SELECT hire_date FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' 
AND (birth_date LIKE  '%-12-25');
SELECT last_name FROM employees WHERE last_name LIKE '%q%'