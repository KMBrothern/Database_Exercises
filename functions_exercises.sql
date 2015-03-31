SELECT  COUNT(*), gender
FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') 
GROUP BY gender;

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees WHERE last_name LIKE 'e%e'
ORDER BY emp_no DESC;

SELECT first_name, last_name, DATEDIFF(now(), hire_date) AS days_employed_with_company
FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%-12-25'
ORDER BY emp_no;

SELECT first_name, last_name 
FROM employees WHERE last_name LIKE '%q%' AND (last_name NOT LIKE '%qu%')
ORDER BY first_name, last_name;
