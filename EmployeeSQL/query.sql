/*1. 
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary FROM employees as e LEFT JOIN salaries as s 
ON e.emp_no = s.emp_no;
2. 
SELECT e.emp_no, e.first_name, e.last_name, e.hire_date FROM employees as e 
WHERE e.hire_date BETWEEN '1986-01-01' AND '1986-12-31';
3.
SELECT dm.dept_no, d.dept_name, dm.emp_no, dm.from_date, dm.to_date, e.first_name, e.last_name 
FROM dept_manager as dm LEFT JOIN departments as d ON d.dept_no= dm.dept_no 
LEFT JOIN employees as e ON e.emp_no = dm.emp_no;
4.
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM departments as d LEFT JOIN dept_emp as de
ON d.dept_no = de.dept_no LEFT JOIN employees as e ON e.emp_no = de.empt_no;
5.
SELECT e.emp_no, e.last_name, e.first_name 
FROM employees as e
WHERE first_name='Hercules' AND last_name LIKE 'B%';
6. 
SELECT d.dept_name, e.emp_no,e.last_name,e.first_name
FROM departments as d LEFT JOIN dept_emp as de
ON d.dept_no=de.dept_no
LEFT JOIN employees as e
ON e.emp_no=de.empt_no WHERE d.dept_name='Sales' ;
7.
SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees as e
LEFT JOIN dept_emp as de
ON e.emp_no = de.empt_no
LEFT JOIN departments as d
ON d.dept_no = de.dept_no
WHERE d.dept_name='Sales' OR d.dept_name='Development'

8.
SELECT e.last_name, COUNT(e.last_name) AS "last name count"
FROM employees as e
GROUP BY last_name
ORDER BY "last name count" DESC
*/