--Table Schemata
--tables created and imported from CSV files in same order to preserve data
--titles selected first so as to no interfere with different name in employees table
CREATE TABLE titles(
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR(255) NOT NULL,
	PRIMARY KEY(title_id)
	);	
--length of characters dependent on max character length of field in CSV files (within reason, otherwise 255)
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
--junction table for department names
CREATE TABLE departments(
	dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(255) NOT NULL,
	PRIMARY KEY(dept_no)
);
--junction table for department numbers
CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	PRIMARY KEY(emp_no,dept_no)
);
--table of department managers
CREATE TABLE dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no INTEGER NOT NULL,
	PRIMARY KEY(dept_no,emp_no)
);
--table of salaries
CREATE TABLE salaries(
	emp_no INTEGER NOT NULL,
	salary DECIMAL NOT NULL,
	PRIMARY KEY(emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);