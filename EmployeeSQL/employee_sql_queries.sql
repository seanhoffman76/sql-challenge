-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
JOIN salaries s ON (e.emp_no = s.emp_no);

-- 2. List employees who were hired in 1986.
SELECT e.emp_no, e.last_name, e.first_name, e.hire_date
FROM employees e
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- 3. List the manager of each department with the following information: 
-- department number, department name, the managers employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, m.emp_no AS manager_emp_no, e.last_name, e.first_name, 
	e.hire_date AS original_start_date, m.from_date AS manager_start_date, m.to_date AS manager_end_date
FROM departments d
JOIN dept_manager m ON (d.dept_no = m.dept_no)
JOIN employees e ON (m.emp_no = e.emp_no);

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT z.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp z
JOIN employees e ON (z.emp_no = e.emp_no)
JOIN departments d ON (z.dept_no = d.dept_no);

-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
WHERE e.first_name = 'Hercules'
  AND e.last_name LIKE ('B%');
  
-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT z.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp z
JOIN employees e ON (z.emp_no = e.emp_no)
JOIN departments d ON (z.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT z.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp z
JOIN employees e ON (z.emp_no = e.emp_no)
JOIN departments d ON (z.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales','Development');

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT e.last_name, COUNT(*) AS frequency
FROM employees e
GROUP BY e.last_name
ORDER BY frequency DESC;

-- BONUS query result...lookup your emp_no.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary, d.dept_name
FROM employees e
JOIN salaries s ON (e.emp_no = s.emp_no)
JOIN dept_emp z ON (e.emp_no = z.emp_no)
JOIN departments d ON (z.dept_no = d.dept_no)
WHERE e.emp_no = '499942';