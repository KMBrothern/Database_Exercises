use employees;

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
LIMIT 10;
