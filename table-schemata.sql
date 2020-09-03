--Table Schemata
CREATE TABLE titles(
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR(255) NOT NULL,
	PRIMARY KEY(title_id)
	);	

CREATE TABLE employees(
	emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE departments(
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(255) NOT NULL,
	PRIMARY KEY(dept_no)
);

CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	PRIMARY KEY(emp_no,dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no INTEGER NOT NULL,
	PRIMARY KEY(dept_no,emp_no)
);

CREATE TABLE salaries(
	emp_no INTEGER NOT NULL,
	salary DECIMAL NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);