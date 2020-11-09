-- List the following details of each employee: employee #, last & first name, sex, and salary
SELECT 
    e.emp_no "Employee Number", 
    e.last_name "Last Name", 
    e.first_name "First Name", 
    e.sex "Gender", s.salary "Salary"
FROM employees e
JOIN salaries s ON (e.emp_no = s.emp_no);

-- List employees who were hired in 1986.
SELECT 
    emp_no "Employee Numbner", 
    first_name "First Name", 
    last_name "Last Name", 
    hire_date "Hire Date"
FROM employees
WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986'
ORDER BY hire_date

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT 
	departments.dept_no, 
	departments.dept_name, 
	dept_manager.emp_no, 
	employees.last_name, 
	employees.first_name
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;

-- List the deparment of each employee with the following: 
-- employee number, last name, first name, & department name
SELECT
	dept_emp.emp_no, 
	employees.last_name,
	employees.first_name, 
	departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

-- List first name, last name, and sex for employees who first name is "Hercules" and last name starts with "B"
SELECT 
	first_name, 
	last_name, 
	sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name
SELECT 
	dept_emp.emp_no, 
	employees.last_name, 
	employees.first_name, 
	departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
	dept_emp.emp_no,
	employees.last_name, 
	employees.first_name, 
	departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE
departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT
	last_name,
COUNT (last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY "frequency" DESC;