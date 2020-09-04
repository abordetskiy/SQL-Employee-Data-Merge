--Queries
--1
CREATE VIEW employee_view AS
SELECT e.emp_no,e.last_name, e.first_name, e.sex, s.salary 
FROM employees as e
JOIN salaries as s
ON e.emp_no=s.emp_no;
--2
CREATE VIEW employee_after_1986 AS
SELECT e.first_name,e.last_name, e.hire_date
FROM employees as e
WHERE hire_date >= '1986-01-01' AND e.hire_date <=  '1986-12-31';
--3
CREATE VIEW manager_view AS
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager as dm
JOIN departments as d
ON dm.dept_no = d.dept_no
join employees as e
on dm.emp_no = e.emp_no;
--4
CREATE VIEW department_view AS
SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees as e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN departments as d
on de.dept_no = d.dept_no;
--5
CREATE VIEW hercules_view AS
SELECT e.first_name,e.last_name, e.sex
FROM employees as e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';
--6
CREATE VIEW sales_view AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN departments as d
on de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales';
--7
CREATE VIEW sales_development_view AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
ON e.emp_no = de.emp_no
JOIN departments as d
on de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';
--8
CREATE VIEW last_name_frequency_view AS
SELECT e.last_name, COUNT(e.last_name)
FROM employees as e
GROUP BY e.last_name
ORDER BY COUNT(e.last_name) DESC;

SELECT * FROM employee_view;
SELECT * FROM employee_after_1986;
SELECT * FROM manager_view;
SELECT * FROM department_view;
SELECT * FROM hercules_view;
SELECT * FROM sales_view;
SELECT * FROM sales_development_view;
SELECT * FROM last_name_frequency_view;