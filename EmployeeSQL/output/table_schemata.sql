
CREATE TABLE titles(
	title_id VARCHAR(20) NOT NULL PRIMARY KEY,
	title VARCHAR(20) NOT NULL
	)
	

CREATE TABLE dept_emp(
	emp_no integer NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
)

CREATE TABLE departments(
	dept_no VARCHAR(30) NOT NULL Primary Key,
	dept_name VARCHAR(30) NOT NULL

)

CREATE TABLE employees(
	emp_no integer NOT NULL Primary Key,
	emp_title_id VARCHAR(40) NOT NULL,
	birth_date VARCHAR(20) NOT NULL,
	first_name  character varying(45) NOT NULL,
	last_name character varying(45) NOT NULL,
	sex character varying(1) NOT NULL,
	hire_employees VARCHAR(40) NOT NULL,
	FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
	)


CREATE TABLE dept_manager(
    dept_no VARCHAR NOT NULL,
	emp_no integer NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)

)

CREATE TABLE salaries(
	emp_no int NOT NULL,
	salary int NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
)


SELECT * FROM titles
SELECT * FROM dept_emp
SELECT * FROM departments
SELECT * FROM employees
SELECT * FROM dept_manager
SELECT * FROM salaries
