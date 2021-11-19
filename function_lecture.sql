USE employees;

# SELECT CONCAT(first_name, ' ', last_name)
#            AS 'FULL EMPLOYEES NAME'
# FROM employees
# WHERE first_name NOT LIKE '%DO%'
# LIMIT 10;

# SELECT DAYOFMONTH(NOW());

SELECT *
FROM employees
WHERE year(birth_date) BETWEEN 1950 AND 1959
  AND month(birth_date) = 8
  AND day(birth_date) = 29
LIMIT 10;