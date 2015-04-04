-- Find all employees with the same hire date as employee 101010 using sub-query: returns 69 rows
SELECT *
FROM employees
WHERE emp_no IN (
   SELECT emp_no 
    FROM dept_emp
    WHERE hire_date ='1990-10-22'   
)
;

-- Same as above, but only returning current : returns 55 rows
SELECT *
FROM employees
WHERE emp_no IN (
   SELECT emp_no 
    FROM dept_emp
    WHERE hire_date ='1990-10-22' AND to_date = '9999-01-01'
)
;
-- Find all the titles held by all employees with the first name Aamod: returns 314 rows
SELECT *
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'

)
;

-- Same as above but only returning current : returns 168 rows
SELECT *
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod' AND to_date = '9999-01-01'

)
;

-- Find all the department managers that are female : returns 13 rows
SELECT *
FROM dept_manager
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F'

)
;
-- Same as above only returning current : returns 4 rows
SELECT *
FROM dept_manager
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE gender = 'F' AND to_date = '9999-01-01'

)
;

-- BONUS Find all the department names that have female managers : returns 7 rows
SELECT *
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
    )

)
;

-- Same as above, but only returning current : returns 4 rows
SELECT *
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F' AND to_date = '9999-01-01'
    )

)
;

-- SUPER EXTRA AWESOME BONUS : Solution should use both joins and sub-queries!! Let's get some equality up in here!
-- -Compare average salary per female employee vs average salary per male employee for company history and curent 
-- Gender   |   Avg Salary Per Emp
-- --------------------------------
-- Female   |   $ sal
-- Male     |   $ sal
-- This returns the average salary for all male & female employees both historically 
-- M- 63838...  F- 63769...
SELECT count(*), gender, AVG(s.salary)
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no
GROUP BY gender;
-- This returns the avg salary for all male  and female current employees
-- M-71963...   F-72044...
SELECT count(*), gender, AVG(s.salary)
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE to_date = '9999-01-01'
GROUP BY gender;

-- -Compare the avg sal of female managers to male managers for company history and current

-- -Ratio of female manager to male managers
--      currently
--      historically
