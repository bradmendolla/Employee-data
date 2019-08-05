--#1 salary question

SELECT employees.emp_no, employees.first_name, employees.last_name, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

--#2 hired in 1986

SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE employees.hire_date < '1987-01-01' AND employees.hire_date > '1985-12-31';

--#3 depart manager list

SELECT d.dept_no, d.dept_name, dm.emp_no, dm.from_date, dm.emp_no, e.first_name, e.last_name 
FROM departments AS d
INNER JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
INNER JOIN employees AS e ON dm.emp_no = e.emp_no;

--#4 employee by department

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no;

--#5 Hercules B

SELECT *
FROM employees
WHERE employees.first_name = 'Hercules' 
AND employees.last_name LIKE 'B%';

--#6 Employees in sales

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--#7 Sales and Development

SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

--#8 Last Name Frequency

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY 
COUNT(last_name) DESC;



