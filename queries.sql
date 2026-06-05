-- Insert Departments
INSERT INTO departments (dept_name) VALUES ('HR'), ('Engineering'), ('Sales');

-- Insert Employees
INSERT INTO employees (name, email, dept_id) VALUES
('Vamshi', 'vamshi@email.com', 2),
('Abhi', 'abhi@email.com', 1),
('Ravi', 'ravi@email.com', 3),
('Priya', 'priya@email.com', 2),
('Kiran', 'kiran@email.com', 1);

-- Insert Salaries
INSERT INTO salaries (emp_id, amount) VALUES
(1, 90000), (2, 60000), (3, 75000), (4, 85000), (5, 55000);

-- Select all employees
SELECT * FROM employees;

-- Select employees by department
SELECT * FROM employees WHERE dept_id = 2;

-- Select employees with salary > 70000
SELECT e.name, s.amount
FROM employees e
JOIN salaries s ON e.emp_id = s.emp_id
WHERE s.amount > 70000;

-- Delete an employee
DELETE FROM salaries WHERE emp_id = 5;
DELETE FROM employees WHERE emp_id = 5;

-- Employee details with department
SELECT e.name, e.email, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

-- Total salary per department
SELECT d.dept_name, SUM(s.amount) AS total_salary
FROM departments d
JOIN employees e ON d.dept_id = e.dept_id
JOIN salaries s ON e.emp_id = s.emp_id
GROUP BY d.dept_name;

-- Average salary
SELECT AVG(amount) AS average_salary FROM salaries;