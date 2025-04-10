-- Use case of Union statement --

SELECT first_name, last_name, 'Old Man' as label
FROM employee_demographics
WHERE age > 50 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Old woman' as label
FROM employee_demographics
WHERE age > 50 AND gender = 'female'
union
SELECT first_name, last_name, 'Highly paid employee' as label
FROM employee_salary
WHERE salary > 70000
order by first_name, last_name ;