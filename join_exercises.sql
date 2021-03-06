USE employees;


# SELECT DISTINCT d.dept_name AS 'Department Name',
#                 CONCAT(e.last_name, ', ', e.first_name) AS 'Department Manager'
# FROM departments d
#          JOIN dept_manager m ON d.dept_no = m.dept_no
#          JOIN employees e ON m.emp_no = e.emp_no
# WHERE m.to_date >= CURDATE()
# ORDER BY d.dept_name;

# SELECT DISTINCT d.dept_name AS 'Department Name',
#                 CONCAT(e.last_name, ', ', e.first_name) AS 'Manager Name'
# FROM departments d
#          JOIN dept_manager m ON d.dept_no = m.dept_no
#          JOIN employees e ON m.emp_no = e.emp_no
# WHERE m.to_date >= CURDATE()
#   AND e.gender = 'F';

# SELECT t.title AS Title, COUNT(de.emp_no) AS Count
# FROM departments d
#          JOIN dept_emp de ON d.dept_no = de.dept_no
#          JOIN titles t ON de.emp_no = t.emp_no
# WHERE d.dept_name = 'Customer Service'
#   AND t.to_date >= CURDATE()
#   AND de.to_date >= CURDATE()
# GROUP BY t.title;


SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ', ', e.last_name) AS Name,
       salary AS Salary
FROM departments d
         JOIN dept_manager m ON d.dept_no = m.dept_no
         JOIN dept_emp de ON m.emp_no = de.emp_no
         JOIN employees e ON de.emp_no = e.emp_no
         JOIN salaries s ON e.emp_no = s.emp_no
WHERE m.to_date >= CURDATE()
  AND s.to_date >= CURDATE()
ORDER BY d.dept_name;



SELECT CONCAT(e.first_name, ' ', e.last_name)   AS 'Employee Name',
       d.dept_name AS 'Department Name',
       CONCAT(em.first_name, ' ', em.last_name) AS 'Manager Name'
FROM employees as e
         JOIN dept_emp as de ON de.emp_no = e.emp_no
         JOIN departments as d ON d.dept_no = de.dept_no
         JOIN dept_manager m ON d.dept_no = m.dept_no
         JOIN employees em ON m.emp_no = em.emp_no
WHERE de.to_date >= CURDATE()
  AND m.to_date >= CURDATE()
ORDER BY d.dept_name, e.emp_no;
