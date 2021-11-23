USE employees;

# 1.
SELECT *
FROM EMPLOYEES
WHERE hire_date = (SELECT hire_date FROM employees where emp_no = 101010);
# 69 rows

# 2.
SELECT t.title
FROM titles t
WHERE t.emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod');
# 314 total rows


# 3.
SELECT e.first_name, e.last_name AS dept_mgr
FROM employees e
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date >= CURDATE()
)
  AND e.gender = 'F';
# 4 rows


# Bonus
# 1.
SELECT DISTINCT d.dept_name AS 'Department Name'
FROM departments d
         JOIN dept_manager m ON d.dept_no = m.dept_no
WHERE m.to_date >= CURDATE()
  AND m.emp_no IN (SELECT emp_no FROM employees WHERE gender = 'F');
# 4 rows

# Bonus
# 2.
SELECT first_name, last_name
FROM employees
WHERE emp_no = (SELECT emp_no FROM salaries WHERE to_date >= CURDATE() ORDER BY salary DESC LIMIT 1);
# 1 row