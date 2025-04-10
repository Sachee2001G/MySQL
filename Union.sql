-- Unions

SELECT first_name, last_name
 FROM employee_demographics
 union distinct
 select first_name, last_name
 from employee_salary;
 
SELECT first_name, last_name, 'Old' as label
FROM employee_demographics
WHERE age > 50
UNION
SELECT first_name, last_name, 'Highly paid employee' as label
FROM employee_salary
WHERE salary > 70000
order by first_name, last_name ;