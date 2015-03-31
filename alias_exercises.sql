use employees;

SELECT concat(last_name, ' ', first_name) AS full_name
FROM employees
LIMIT 10;
