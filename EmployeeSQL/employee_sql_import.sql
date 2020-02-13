-- Import data from the csv files into the employee_sql database tables that were created in employee_sql_schema.sql

-- import data from departments.csv into departments table
\COPY departments(dept_no,dept_name) 
FROM 'C:\Users\seanh\sql-challenge\EmployeeSQL\data\departments.csv' DELIMITER ',' QUOTE '"' CSV HEADER;

-- import data from dept_emp.csv into dept_emp table
\COPY dept_emp(emp_no,dept_no,from_date,to_date) 
FROM 'C:\Users\seanh\sql-challenge\EmployeeSQL\data\dept_emp.csv' DELIMITER ',' QUOTE '"' CSV HEADER;

-- import data from dept_manager.csv into dept_manager table
\COPY dept_manager(dept_no,emp_no,from_date,to_date) 
FROM 'C:\Users\seanh\sql-challenge\EmployeeSQL\data\dept_manager.csv' DELIMITER ',' QUOTE '"' CSV HEADER;

-- import data from employees.csv into employees table
\COPY employees(emp_no,birth_date,first_name,last_name,gender,hire_date) 
FROM 'C:\Users\seanh\sql-challenge\EmployeeSQL\data\employees.csv' DELIMITER ',' QUOTE '"' CSV HEADER;

-- import data from salaries.csv into salaries table
\COPY salaries(emp_no,salary,from_date,to_date) 
FROM 'C:\Users\seanh\sql-challenge\EmployeeSQL\data\salaries.csv' DELIMITER ',' QUOTE '"' CSV HEADER;

-- import data from titles.csv into titles table
\COPY titles(emp_no,title,from_date,to_date) 
FROM 'C:\Users\seanh\sql-challenge\EmployeeSQL\data\titles.csv' DELIMITER ',' QUOTE '"' CSV HEADER;