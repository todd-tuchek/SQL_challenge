CREATE TABLE departments (
	dept_no char(4) NOT NULL PRIMARY KEY, 
	dept_name VARCHAR NOT NULL
);

CREATE TABLE employees (
	emp_no INTEGER NOT NULL PRIMARY KEY,
	emp_title_id CHAR(5) NOT NULL, 
	birth_date DATE NOT NULL, 
	first_name VARCHAR NOT NULL, 
	last_name VARCHAR NOT NULL, 
	sex VARCHAR NOT NULL, 
	hire_date DATE NOT NULL
);

CREATE TABLE salaries (
	emp_no INTEGER NOT NULL PRIMARY KEY, 
	salary INTEGER NOT NULL
);

CREATE TABLE titles (
	title_id CHAR(5) NOT NULL, 
	title VARCHAR NOT NULL
);

CREATE TABLE dept_emp (
	emp_no INTEGER NOT NULL, 
	dept_no CHAR(4) NOT NULL
);

CREATE TABLE dept_manager (
	dept_no CHAR(4) NOT NULL, 
	emp_no INTEGER NOT NULL
);
