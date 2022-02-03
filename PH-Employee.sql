-- CREATE TABLE departments (
--      dept_no VARCHAR(5) NOT NULL,
--      dept_name VARCHAR(40) NOT NULL,
--      PRIMARY KEY (dept_no),
--      UNIQUE (dept_name)
-- );

-- CREATE TABLE employees(
-- 	emp_no INT,
-- 	birth_date DATE,
-- 	first_name VARCHAR,
-- 	last_name VARCHAR,
-- 	gender VARCHAR,
-- 	hire_date DATE,
-- 	PRIMARY KEY (emp_no)
-- );

-- CREATE TABLE dept_manager (
-- dept_no VARCHAR(4) NOT NULL,
--     emp_no INT NOT NULL,
--     from_date DATE NOT NULL,
--     to_date DATE NOT NULL,
-- 	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
-- 	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
--     PRIMARY KEY (emp_no, dept_no)
-- );

-- CREATE TABLE salaries (
--   emp_no INT NOT NULL,
--   salary INT NOT NULL,
--   from_date DATE NOT NULL,
--   to_date DATE NOT NULL,
--   FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
--   PRIMARY KEY (emp_no)
-- );

SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM retirement_info;

SELECT first_name, last_name
INTO retirement_info
From employees
Where (birth_date Between '1952-01-01' And '1955-12-31')
	AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

