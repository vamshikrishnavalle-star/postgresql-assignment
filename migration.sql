-- Add Hire_Date column
ALTER TABLE employees ADD COLUMN hire_date DATE;

-- Update existing employees with hire dates
UPDATE employees SET hire_date = '2022-01-15' WHERE emp_id = 1;
UPDATE employees SET hire_date = '2021-06-20' WHERE emp_id = 2;
UPDATE employees SET hire_date = '2023-03-10' WHERE emp_id = 3;
UPDATE employees SET hire_date = '2022-09-05' WHERE emp_id = 4;

-- Verify migration
SELECT * FROM employees;