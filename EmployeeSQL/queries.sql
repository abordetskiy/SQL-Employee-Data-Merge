--Queries
--1 List the following details of each employee: employee number, last name, first name, sex, and salary.
CREATE VIEW employee_view AS
SELECT e.emp_no,e.last_name, e.first_name, e.sex, s.salary 
FROM employees as e
JOIN salaries as s
ON e.emp_no=s.emp_no;
--2 List first name, last name, and hire date for employees who were hired in 1986.
CREATE VIEW employee_after_1986 AS
SELECT e.first_name,e.last_name, e.hire_date
FROM employees as e
WHERE hire_date >= '1986-01-01' AND e.hire_date <=  '1986-12-31';
--3 List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
CREATE VIEW manager_view AS
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager as dm
JOIN departments as d
ON dm.dept_no = d.dept_no
join employees as e
on dm.emp_no = e.emp_no;
--4 List the department of each employee with the following information: employee number, last name, first name, and department name.
CREATE VIEW department_view AS
SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees as e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN departments as d
on de.dept_no = d.dept_no;
--5 List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
CREATE VIEW hercules_view AS
SELECT e.first_name,e.last_name, e.sex
FROM employees as e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';
--6 List all employees in the Sales department, including their employee number, last name, first name, and department name.
CREATE VIEW sales_view AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN departments as d
on de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales';
--7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
CREATE VIEW sales_development_view AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN departments as d
on de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';
--8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
CREATE VIEW last_name_frequency_view AS
SELECT e.last_name, COUNT(e.last_name)
FROM employees as e
GROUP BY e.last_name
ORDER BY COUNT(e.last_name) DESC;


--1 List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT * FROM employee_view;
--2 List first name, last name, and hire date for employees who were hired in 1986.
SELECT * FROM employee_after_1986;
--3 List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT * FROM manager_view;
--4 List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT * FROM department_view;
--5 List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM hercules_view;
--6 List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM sales_view;
--7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT * FROM sales_development_view;
--8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT * FROM last_name_frequency_view;